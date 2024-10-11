import 'package:appidoso1/DesignSystem/shared/colors.dart';
import 'package:appidoso1/DesignSystem/shared/styles.dart';
import 'package:flutter/material.dart';
import 'action_button_view_model.dart';

class ActionButton extends StatelessWidget {
  final ActionButtonViewModel viewModel;

  const ActionButton._({super.key, required this.viewModel});

  static Widget instantiate({required ActionButtonViewModel viewModel}) {
    return ActionButton._(viewModel: viewModel);
  }

  @override
  Widget build(BuildContext context) {
    double horizontalPadding = 32;
    double verticalPadding = 12;
    double iconSize = 24;
    TextStyle buttonTextStyle = buttonBold;
    Color buttonColor = darkPrimaryBrandColor;

    switch (viewModel.size) {
      case ActionButtonSize.large:
        buttonTextStyle = buttonBold;
        iconSize = 32.0;
        break;
      case ActionButtonSize.medium:
        buttonTextStyle = buttonBold2;
        horizontalPadding = 24.0;
        iconSize = 24;
        break;
      case ActionButtonSize.small:
        buttonTextStyle = buttonBold;
        horizontalPadding = 16;
        iconSize = 16;
        break;
      case ActionButtonSize.small2:
        buttonTextStyle = button3Semibold;
        horizontalPadding = 16;
        iconSize = 16;
        break;
      default:
    }

    switch (viewModel.style) {
      case ActionButtonStyle.one:
        buttonColor = BotonOneColor;
        break;
      case ActionButtonStyle.two:
        buttonColor = BotonTwoColor;
        break;
      case ActionButtonStyle.three:
        buttonColor = BotonThreeColor;
        break;
      case ActionButtonStyle.forr:
        buttonColor = BotonForrColor;
        break;
      case ActionButtonStyle.five:
        buttonColor = BotonFiveColor;
        break;
      case ActionButtonStyle.six:
        buttonColor = BotonSixColor;
        break;
      case ActionButtonStyle.seven:
        buttonColor = BotonSevenColor;
        break;
      case ActionButtonStyle.eigth:
        buttonColor = BotoneigthColor;
        break;
      case ActionButtonStyle.nine:
        buttonColor = bottonLog;
        break;

      default:
    }

    return ElevatedButton(
      onPressed: viewModel.onPressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          textStyle: buttonTextStyle,
          padding: EdgeInsets.symmetric(
              vertical: verticalPadding, horizontal: horizontalPadding)),
      child: viewModel.icon != null
          ? Row(
              children: [
                Icon(
                  viewModel.icon,
                  size: iconSize,
                ),
                Text(viewModel.text)
              ],
            )
          : Text(viewModel.text),
    );
  }
}
