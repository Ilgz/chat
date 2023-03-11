import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chat/domain/auth/value_objects.dart';
import 'package:chat/infrastructure/core/firestore_helpers.dart';
part 'user.freezed.dart';
@freezed
abstract class User with _$User{
  factory User({required UserName userName, required EmailAddress emailAddress,required bool isOnline,required Timestamp lastActive,  required List<String> fcmTokens
    ,required DocumentReference reference})=_User;
  
  factory User.empty({
    FirebaseFirestore? firebaseFirestore
  }) {
    final dummyRef=(firebaseFirestore??FirebaseFirestore.instance).dummyRef;
    return User(userName: UserName("User",),lastActive:Timestamp.now(),isOnline:false,emailAddress: EmailAddress("user@gmail.com"),fcmTokens:[],reference: dummyRef);}
}