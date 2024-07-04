import 'package:flutter/material.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final String secondaryLabel;
  final VoidCallback primaryOnPressed;
  final VoidCallback secondaryOnPressed;

  const SetLabelButtons(
      {super.key,
      required this.primaryLabel,
      required this.secondaryLabel,
      required this.primaryOnPressed,
      required this.secondaryOnPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        children: [
          Expanded(
              child: LabelButtonWidget(
                  label: primaryLabel, onPressed: primaryOnPressed)),
          const VerticalDivider(width: 0.5, color: Colors.grey),
          Expanded(
              child: LabelButtonWidget(
                  label: secondaryLabel, onPressed: secondaryOnPressed))
        ],
      ),
    );
  }
}
