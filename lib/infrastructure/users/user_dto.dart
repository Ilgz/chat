import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chat/domain/users/user.dart';
import 'package:chat/domain/auth/value_objects.dart';
import 'package:chat/infrastructure/core/firestore_helpers.dart';
part 'user_dto.freezed.dart';
part 'user_dto.g.dart';
@freezed
abstract class UserDto implements _$UserDto {
  UserDto._();

  factory UserDto(
      {required String name,
        required String email,
        required List<String> nameSearch,
        required List<String> fcmTokens,

        @ServerTimestampConverter()
        Timestamp? lastActive,
        bool? isOnline,
        @DocumentReferenceConverter()
        @JsonKey(ignore: true)
        DocumentReference? reference,}) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromDomain(User user,List<String> nameSearch) => UserDto(
      name: user.userName.getOrCrash(),
      email: user.emailAddress.getOrCrash(),
      nameSearch: nameSearch,
    fcmTokens: user.fcmTokens
      );

  factory UserDto.fromFirestore(final doc) {
    return UserDto.fromJson(doc.data()! as Map<String, dynamic>).copyWith(
      reference: doc.reference,
    );
  }

  User toDomain() {
    return User(
        userName: UserName(name),emailAddress: EmailAddress(email),reference: reference!,fcmTokens: fcmTokens, isOnline:isOnline??false , lastActive: lastActive??Timestamp.fromMillisecondsSinceEpoch(0));
  }
}