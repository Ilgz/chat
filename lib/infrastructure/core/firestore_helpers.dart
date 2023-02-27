import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
//
// extension FireStoreX on FirebaseFirestore{
//   Future<DocumentReference> userDocument()async{
//     final userOption=await getIt<IAuthFacade>().getSignedInUser();
//     final user=userOption.getOrElse(() => throw NotAuthenticatedError());
//     return FirebaseFirestore.instance.collection("users").doc(user.id.getOrCrash());
//   }
// }
extension FireStoreX on FirebaseFirestore{
  CollectionReference get projectCollection => collection("projects");
  CollectionReference get userCollection => collection("users");
  CollectionReference get chatCollection => collection("chats");
  DocumentReference get dummyRef => doc("test/test");
}

class DocumentReferenceConverter
    implements JsonConverter<DocumentReference, DocumentReference> {
  const DocumentReferenceConverter();

  @override
  DocumentReference fromJson(DocumentReference documentReference) {
    return documentReference;
  }

  @override
  DocumentReference toJson(DocumentReference documentReference) =>
      documentReference;
}

class ServerTimestampConverter implements JsonConverter<Timestamp, Timestamp> {
  const ServerTimestampConverter();

  @override
  Timestamp fromJson(Timestamp timestamp) {
    return timestamp;
  }

  @override
  Timestamp toJson(Timestamp date) => date;
}