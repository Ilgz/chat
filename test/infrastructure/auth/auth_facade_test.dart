import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:chat/domain/auth/auth_failure.dart';
import 'package:chat/domain/auth/value_objects.dart';
import 'package:chat/infrastructure/auth/firebase_auth_facade.dart';
import 'package:chat/infrastructure/core/firestore_helpers.dart';

import '../../fixtures/faker.dart';
import 'auth_facade_test.mocks.dart';

@GenerateMocks([
  FirebaseFirestore,
  FirebaseAuth,
  UserCredential,
  User,
  CollectionReference<Map<String, dynamic>>,
  DocumentReference
])
void main() async {
  late FirebaseAuthFacade authFacade;
  late FirebaseFirestore firestore;
  late MockFirebaseAuth firebaseAuth;
  late MockUserCredential userCredential;
  late MockCollectionReference<Map<String, dynamic>> collectionReference;
  late MockDocumentReference<Map<String, dynamic>> documentReference;
  late User user;
  setUp(() {
    firestore = MockFirebaseFirestore();
    firebaseAuth = MockFirebaseAuth();
    authFacade = FirebaseAuthFacade(firebaseAuth, firestore,FirebaseMessaging.instance);
    userCredential = MockUserCredential();
    collectionReference = MockCollectionReference();
    documentReference = MockDocumentReference();
    user = MockUser();
  });
  group("Login", () {
    final email = getRandomEmail();
    final password = getRandomString(12);
    void setUpHttpSuccess() {
      when(firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .thenAnswer((_) async => (userCredential));
    }

    void setUpHttpFailure() {
      when(firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .thenThrow(FirebaseAuthException(
              message: "", code: 'ERROR_NETWORK_REQUEST_FAILED'));
    }

    void setUpHttp401Failure() {
      when(firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .thenThrow(
              FirebaseAuthException(message: "", code: 'wrong-password'));
    }

    test(
      "should perform a request to the firebase to get the user's credentials",
      () async {
        setUpHttpSuccess();
        await authFacade.signInWithEmailAndPassword(
          emailAddress: EmailAddress(email),
          password: Password(password),
        );
        verify(firebaseAuth.signInWithEmailAndPassword(
                email: email, password: password))
            .called(1);
      },
    );
    test(
      "should return the unit when the response code is 200 (success)",
      () async {
        setUpHttpSuccess();
        final result = await authFacade.signInWithEmailAndPassword(
          emailAddress: EmailAddress(email),
          password: Password(password),
        );
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);
        expect(value, equals(unit));
      },
    );
    test(
      'should return an AuthFailure when FirebaseAuthException is thrown',
      () async {
        // arrange
        setUpHttpFailure();
        // act
        final result = await authFacade.signInWithEmailAndPassword(
          emailAddress: EmailAddress(email),
          password: Password(password),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(AuthFailure.serverError()),
        );
      },
    );
    test(
      'should return an AuthFailure.invalidCredentials when AuthFailure is thrown with status 401',
      () async {
        setUpHttp401Failure();
        final result = await authFacade.signInWithEmailAndPassword(
          emailAddress: EmailAddress(email),
          password: Password(password),
        );
        expect(result.isLeft(), true);
        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(AuthFailure.invalidEmailAndPassword()),
        );
      },
    );
  });
  group('Register', () {
    // final data = fixture('account.json');
    // final errorData = fixture('field_errors.json');
    final email = getRandomEmail();
    final password = getRandomString(12);
    final username = getRandomName();
    void setUpHttpSuccess() {
      when(firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .thenAnswer((_) async => userCredential);
      when(userCredential.user).thenReturn(user);
      when(user.uid).thenReturn("/");
      when(firestore.userCollection).thenReturn(collectionReference);
      when(collectionReference.doc(any)).thenReturn(documentReference);
      when(documentReference.set(any)).thenAnswer((_) async {
        return;
      });
    }

    void setUpHttpFailure() {
      when(firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .thenThrow(FirebaseAuthException(
              message: "", code: 'ERROR_NETWORK_REQUEST_FAILED'));
    }

    void setUpHttp400Failure() {
      when(firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .thenThrow(
              FirebaseAuthException(message: "", code: 'email-already-in-use'));
    }

    test(
      "should perform a request to the network to register the user and get their credentials",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        authFacade.registerWithEmailAndPassword(
          emailAddress: EmailAddress(email),
          password: Password(password),
          userName: UserName(username),
        );

        // assert
        verify(firebaseAuth.createUserWithEmailAndPassword(
                email: email, password: password))
            .called(1);
      },
    );
    test(
      "should return the unit when the response code is 201 (created)",
      () async {
        // arrange
        setUpHttpSuccess();

        // act
        final result = await authFacade.registerWithEmailAndPassword(
          emailAddress: EmailAddress(email),
          password: Password(password),
          userName: UserName(username),
        );

        // assert
        expect(result.isRight(), true);
        final value = result.fold((l) => l, (r) => r);
        expect(value, equals(unit));
      },
    );
    test(
      'should return an AuthFailure when FirebaseAuthException is thrown',
      () async {
        // arrange
        setUpHttpFailure();
        // act
        final result = await authFacade.registerWithEmailAndPassword(
          emailAddress: EmailAddress(email),
          password: Password(password),
          userName: UserName(username),
        );

        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(AuthFailure.serverError()),
        );
      },
    );
    test(
      'should return an AuthFailure.emailAlreadyInUse when FirebaseAuthException is thrown',
      () async {
        // arrange
        setUpHttp400Failure();
        // act
        final result = await authFacade.registerWithEmailAndPassword(
          emailAddress: EmailAddress(email),
          password: Password(password),
          userName: UserName(username),
        );
        // assert
        expect(result.isLeft(), true);

        final value = result.fold((l) => l, (r) => r);

        expect(
          value,
          equals(AuthFailure.emailAlreadyInUse()),
        );
      },
    );
  });
}
