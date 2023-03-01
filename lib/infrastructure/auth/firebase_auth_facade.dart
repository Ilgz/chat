import 'package:chat/infrastructure/notification/notification_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:chat/domain/auth/auth_failure.dart';
import 'package:chat/domain/auth/i_auth_facade.dart';
import 'package:chat/domain/auth/value_objects.dart';
import 'package:chat/domain/core/errors.dart';
import 'package:chat/domain/users/user.dart';
import 'package:chat/infrastructure/core/firestore_helpers.dart';
import 'package:chat/infrastructure/users/user_dto.dart';
@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseMessaging _firebaseMessaging;
  FirebaseAuthFacade(this._firebaseAuth,this._firebaseFirestore,this._firebaseMessaging);
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required UserName userName,required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final nameStr = userName.getOrCrash();
    try {
      String? userId=(await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr)).user?.uid;
      List<String> caseSearchList = [];
      String temp = "";
      for (int i = 2; i < nameStr.length; i++) {
        temp = temp + nameStr[i].toLowerCase();
        caseSearchList.add(nameStr.toLowerCase().substring(0,2)+temp);
      }
      await _firebaseFirestore.userCollection.doc(userId).set(UserDto(name: nameStr, email: emailAddressStr,nameSearch: caseSearchList,fcmTokens: [(await getFcmToken())].where((fcm) => fcm.isNotEmpty).toList()).toJson());
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(AuthFailure.emailAlreadyInUse());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
    await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr, password: passwordStr);
    await _firebaseFirestore.userCollection.doc(getSignedInUserId().getOrElse(() => throw NotAuthenticatedError())).update({"fcmTokens":FieldValue.arrayUnion([(await getFcmToken())].where((fcmToken) => fcmToken.isNotEmpty).toList())});
    return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(AuthFailure.invalidEmailAndPassword());
      } else {
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<User>  getSignedInUser() async {
    final userOption = optionOf(_firebaseAuth.currentUser?.uid);
    if(userOption.isNone()){
      throw NotAuthenticatedError();
    }else{
      final userId = userOption.getOrElse(()=>"");
      _firebaseFirestore.userCollection.doc(userId).snapshots();
      final userJson=await _firebaseFirestore.userCollection
          .doc(userId).get();
      return UserDto.fromFirestore(userJson).toDomain();
    }

  }

  @override
  Future<void> signOut() async {
    await _firebaseFirestore.userCollection.doc(getSignedInUserId().getOrElse(() => throw NotAuthenticatedError())).update({"fcmTokens":FieldValue.arrayRemove([(await getFcmToken())].where((fcmToken) => fcmToken.isNotEmpty).toList())});
    await _firebaseAuth.signOut();}

  @override
  Option<String> getSignedInUserId() {
    return optionOf(_firebaseAuth.currentUser?.uid);
  }
  @override
  Future<String> getFcmToken()async{
    if (!kIsWeb) {
      return await _firebaseMessaging.getToken()??"";
     // return NotificationController().firebaseToken;
    }else{
      return "";
    }
  }
}




















