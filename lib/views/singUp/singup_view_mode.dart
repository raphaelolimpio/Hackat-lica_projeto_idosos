import 'package:appidoso1/DesignSystem/Components/LinkedLabel/linked_label_view-mode.dart';
import 'package:appidoso1/DesignSystem/Components/Buttons/action_button.dart';
import 'package:appidoso1/DesignSystem/Components/Buttons/action_button_view_model.dart';
import 'package:appidoso1/DesignSystem/Components/imagens/avatar/avatar.dart';
import 'package:appidoso1/DesignSystem/Components/imagens/avatar/avatar_view_mode.dart';
import 'package:appidoso1/DesignSystem/Components/inputField/input_text.dart';
import 'package:appidoso1/views/home/home_view_mode.dart';
import 'package:appidoso1/views/login/login_view_mode.dart';
import 'package:appidoso1/views/singUp/singup.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SingUpViewModel extends StatefulWidget {
  const SingUpViewModel({super.key});

  @override
  State<SingUpViewModel> createState() => _SingUpViewModelState();
}

class _SingUpViewModelState extends State<SingUpViewModel> {
  late SingUp _viewModel; // Instância do ViewModel
  late ActionButtonViewModel
      _singUpButtonViewModel; // Instância do ActionButton
  late LinkedLabelViewModel _linkedLabelViewModel; // Instância do LinkedLabel
  late ActionButtonViewModel _creatAccountButtonViewModel; // Instância do
  late final AvatarViewModel _AvatarViewModel;

  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _viewModel = SingUp(); // Inicializa o ViewModel

    //imagem do perfil
    _AvatarViewModel = AvatarViewModel(
      model: AvatarModel.large,
      addImageIcon: Icon(Icons.add_a_photo),
      allowEdit: true,
      removeImageIcon: Icon(Icons.remove_circle),
      onImageChanged: (image) {},
      getImageSource: () async {
        return ImageSource.gallery;
      },
      getPreferredCameraDevice: () async {
        return CameraDevices.rear;
      },
      onImageRemoved: () {},
    );

    //botão
    _singUpButtonViewModel = ActionButtonViewModel(
      size: ActionButtonSize.large,
      style: ActionButtonStyle.nine,
      text: 'Singup',
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeVielModel()),
        );
      },
    );

    _creatAccountButtonViewModel = ActionButtonViewModel(
      size: ActionButtonSize.small2,
      style: ActionButtonStyle.nine,
      text: "Login",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginViewModel()),
        );
      },
    );

    _linkedLabelViewModel = LinkedLabelViewModel(
        fullText: "I've read agreen Terms & Services",
        linkedText: "Terms & Services",
        onLinkTap: () => _viewModel.OnLinktTap(context));
  }

  @override
  void dispose() {
    _viewModel.dispose(); // Libera os recursos no ViewModel
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //imagem
              Padding(
                  padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
                  child: Avatar(viewModel: _AvatarViewModel)),

              //inputTExt
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Campo de email
                    StyledInputField.instantiate(
                        viewModel: _viewModel.emailViewModel),
                    const SizedBox(height: 16.0),
                    // Campo de senha
                    StyledInputField.instantiate(
                        viewModel: _viewModel.passwordViewModel),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.1, horizontal: 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _viewModel.buildCustomCheckbox(
                      isChecked: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value ?? false;
                        });
                      },
                      linkedLabelViewModel: _linkedLabelViewModel,
                    ),
                  ],
                ),
              ),

              //buton login
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  child: ActionButton.instantiate(
                      viewModel: _singUpButtonViewModel),
                ),
              ),
              //buton criar conta
              Padding(
                padding: EdgeInsets.only(top: 100.0, bottom: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Already Have An Account?"),
                    const SizedBox(height: 10.0),
                    ActionButton.instantiate(
                        viewModel: _creatAccountButtonViewModel), //
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
