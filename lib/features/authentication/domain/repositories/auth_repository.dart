import 'dart:async';

import 'package:finflux/features/authentication/data/repository/auth_repositor_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _fireBaseAuth;
  AuthRepositoryImpl(this._fireBaseAuth);
  
  String _verificationId = "";

@override
Future<void> sendOtp(String phoneNumber) async {
  final completer = Completer<void>();
  _fireBaseAuth.verifyPhoneNumber(
    phoneNumber: phoneNumber,
    timeout: const Duration(seconds: 60),
    verificationCompleted: (PhoneAuthCredential credential) async {
      await _fireBaseAuth.signInWithCredential(credential);
    },
    verificationFailed: (FirebaseAuthException e) {
      completer.completeError(e);
    },
    codeSent: (String verificationId, int? resendToken) {
      _verificationId = verificationId;
      completer.complete();
    },
    codeAutoRetrievalTimeout: (String verificationId) {
      _verificationId = verificationId;
    },
  );
  return completer.future;
}


  @override
  Future<void> verifyOtp(String smsCode) async {
    final credential = PhoneAuthProvider.credential(
      verificationId: _verificationId,
      smsCode: smsCode,
    );
  await _fireBaseAuth.signInWithCredential(credential);
  }
}
