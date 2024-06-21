import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/auth/auth_controller.dart';

class LoginController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final authController = AuthController();

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();
      final response = await _auth.signInWithProvider(googleAuthProvider);
      authController.setUser(context, response);
    } catch (error) {
      authController.setUser(context, null);

      print(error);
    }
  }
}
