import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_images.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

import '../../shared/widgets/login_button/login_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppColors.primary,
            ),
            Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Image.asset(
                      AppImages.person,
                      width: 208,
                      height: 373,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 15),
                      child: Image.asset(AppImages.logomini),
                    ),
                    Text(
                      "Organize seus boletos em um só lugar",
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                    LoginButton(onTap: () {
                      print("clicou");
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
