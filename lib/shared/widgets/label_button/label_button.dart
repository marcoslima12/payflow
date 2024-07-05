import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class LabelButtonWidget extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final TextStyle? styles;

  const LabelButtonWidget(
      {super.key, required this.label, required this.onPressed, this.styles});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: styles ?? TextStyles.buttonHeading,
          textAlign: TextAlign.center,
        ));
  }
}
