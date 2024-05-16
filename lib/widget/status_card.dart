import 'package:flutter/material.dart';
import 'package:hubtel_test/widget/custom_text.dart';

class StatusCard extends StatelessWidget {
  final Color cardColor;
  final Color textColor;
  final String text;
  final Widget iconWidget;

  const StatusCard(
      {super.key,
      required this.cardColor,
      required this.text,
      required this.textColor,
      this.iconWidget = const SizedBox()});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(13)),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              iconWidget,
              CustomText(
                text: text,
                fontWeight: FontWeight.bold,
                color: textColor,
                fontSize: 11,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
