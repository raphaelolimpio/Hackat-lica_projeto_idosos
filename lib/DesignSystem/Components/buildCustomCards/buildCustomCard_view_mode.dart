import 'package:flutter/material.dart';

class BuildCustomCardViewModel {
  final String title;
  final String subtitle;
  final String date;
  final String buttonText;
  final void Function(BuildContext context) onButtonPressed;

  BuildCustomCardViewModel({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.buttonText,
    required this.onButtonPressed,
  });
}
