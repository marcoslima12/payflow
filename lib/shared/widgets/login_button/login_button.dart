import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_images.dart';
import '../../themes/app_text_styles.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onTap;
  const LoginButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 20),
        child: InkWell(
            onTap: onTap,
            child: Container(
              height: 56,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                color: AppColors.shape,
                borderRadius: BorderRadius.circular(5),
                border: const Border.fromBorderSide(
                  BorderSide(color: AppColors.stroke),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: (size.width * 0.8) *
                        0.2, // 30% of the container's width
                    decoration: const BoxDecoration(
                      border: Border(
                        right: BorderSide(color: AppColors.stroke),
                      ),
                    ),
                    child: Image.asset(AppImages.google),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "Entrar com Google",
                        style: TextStyles.buttonGray,
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
