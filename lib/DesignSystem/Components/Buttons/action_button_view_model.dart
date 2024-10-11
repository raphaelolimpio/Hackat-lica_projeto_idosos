import 'package:flutter/material.dart';

enum ActionButtonSize { small, medium, large, small2 }

enum ActionButtonStyle {
  one,
  two,
  three,
  forr,
  five,
  six,
  seven,
  eigth,
  nine,
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
