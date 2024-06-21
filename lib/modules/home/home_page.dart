import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: Text("Teste"),
    );
  }
}
