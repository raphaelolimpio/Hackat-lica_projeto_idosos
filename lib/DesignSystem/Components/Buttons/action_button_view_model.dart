import 'package:flutter/material.dart';

enum ActionButtonSize { small, medium, large }

enum ActionButtonStyle {
  one,
  two,
  three,
  forr,
  five,
  six,
  seven,
  eigth,
}

class ActionButtonViewModel {
  final ActionButtonSize size;
  final ActionButtonStyle style;
  final String text;
  final IconData? icon;
  final Function() onPressed;

  ActionButtonViewModel({
    required this.size,
    required this.style,
    required this.text,
    this.icon,
    required this.onPressed,
  });
}
