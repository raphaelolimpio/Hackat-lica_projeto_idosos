import 'package:appidoso1/DesignSystem/Components/Buttons/action_button.dart';
import 'package:appidoso1/DesignSystem/Components/Buttons/action_button_view_model.dart';
import 'package:appidoso1/DesignSystem/Components/inputField/input_text.dart';
import 'package:appidoso1/views/login/login.dart';
import 'package:appidoso1/views/login/login_view_mode.dart';
import 'package:flutter/material.dart';

class ResetpassViewModel extends StatefulWidget {
  const ResetpassViewModel({super.key});

  @override
  State<ResetpassViewModel> createState() => _ResetpasswordViewModelState();
}

class _ResetpasswordViewModelState extends State<ResetpassViewModel> {
  @override
  late ActionButtonViewModel _loginButtonViewModel;
  late Login _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = Login(); // Inicializa o ViewModel
    //botão
    _loginButtonViewModel = ActionButtonViewModel(
      size: ActionButtonSize.large,
      style: ActionButtonStyle.one,
      text: 'Login',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginViewModel()),
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(color: Colors.blueGrey[50]),
                  child: Center(
                    child: const Text(
                        "We will send you on your email reset password link",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 20.0)),
                  ),
                ),
                const SizedBox(height: 16.0),

                StyledInputField.instantiate(
                    viewModel: _viewModel.emailViewModel),
                const SizedBox(height: 16.0),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    width: double.infinity,
                    child: ActionButton.instantiate(
                        viewModel: _loginButtonViewModel),
                  ),
                ), //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
