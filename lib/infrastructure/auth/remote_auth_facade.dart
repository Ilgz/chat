import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';
import 'package:chat/application/core/application.dart';
import 'package:chat/domain/auth/auth_failure.dart';
import 'package:chat/domain/auth/i_auth_facade.dart';
import 'package:chat/domain/auth/value_objects.dart';
import 'package:chat/domain/core/errors.dart';
import 'package:chat/domain/token/token.dart';
import 'package:chat/domain/users/user.dart';
import 'package:chat/infrastructure/core/remote_helpers.dart';
import 'package:chat/infrastructure/users/user_dto.dart';
import 'package:chat/presentation/core/constants.dart';
class LocalAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final Client _client;
  final FlutterSecureStorage _storage;
  LocalAuthFacade(this._firebaseAuth,this._client,this._storage);
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required UserName userName,required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final nameStr = userName.getOrCrash();
    try {
      final response=await _client.post(Uri.http(AppConstants.myServer,"/api/v1/users/auth/registration/"),body: {
        "username": nameStr,
        "email": emailAddressStr,
        "password": passwordStr
      });
      if(response.statusCode==201){
        return signInWithEmailAndPassword(emailAddress: emailAddress, password: password);
      }else{
        return left(AuthFailure.remoteError(response.utfBody));
      }
    } catch (e) {
        return left(AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    try {
      final response=await _client.post(Uri.http(AppConstants.myServer,"/api/v1/users/auth/login/"),body: {
        "email": emailAddressStr,
        "password": passwordStr
      });
      if(response.statusCode==200){
        final token=tokenFromJson(response.utfBody);
        _storage.write(key: 'access', value: token.access);
        _storage.write(key: 'refresh', value: token.refresh);
        return right(unit);
      }else{
        return left(AuthFailure.remoteError(response.utfBody));
      }
    } catch (e) {
        return left(AuthFailure.serverError());
    }
  }

  @override
  Future<User>  getSignedInUser() async {
    final accessToken=await _storage.read(key: 'access');
    final userOption = optionOf(_firebaseAuth.currentUser?.uid);
    if(accessToken==null){
      throw NotAuthenticatedError();
    }else{
      final response=await _client.get(Uri.http(AppConstants.myServer,"/api/v1/users/auth/profile/"),headers:Application(accessToken).getHeader() );
      return UserDto.fromFirestore(response.utfBody).toDomain();
    }
  }

  @override
  Future<void> signOut() async => _firebaseAuth.signOut();

  @override
  Option<String> getSignedInUserId() {
    // TODO: implement getSignedInUserId
    throw UnimplementedError();
  }

  @override
  String getFcmToken() {
    // TODO: implement getFcmToken
    throw UnimplementedError();
  }


}

