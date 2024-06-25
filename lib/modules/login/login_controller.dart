// ignore_for_file: use_build_context_synchronously
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/auth/auth_controller.dart';
import 'package:payflow/shared/models/user_model.dart';

class LoginController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final authController = AuthController();

  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      GoogleAuthProvider googleAuthProvider = GoogleAuthProvider();
      final response = await _auth.signInWithProvider(googleAuthProvider);
      final user = response.user;
      final loggedUser =
          UserModel(name: "Nome do Usuário", photoURL: user?.photoURL);
      authController.setUser(context, loggedUser);
    } catch (error) {
      authController.setUser(context, null);
      print('Erro: $error');
    }
  }
}
