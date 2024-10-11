import 'package:appidoso1/DesignSystem/Components/Buttons/action_button.dart';
import 'package:appidoso1/DesignSystem/Components/Buttons/action_button_view_model.dart';
import 'package:appidoso1/DesignSystem/Components/imagens/avatar/avatar.dart';
import 'package:appidoso1/DesignSystem/Components/imagens/avatar/avatar_view_mode.dart';
import 'package:appidoso1/DesignSystem/shared/colors.dart';
import 'package:appidoso1/views/contacts/contacts_view_mode.dart';
import 'package:appidoso1/views/point/point_view_mode.dart';
import 'package:appidoso1/views/shedule/shedule_view_mode.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomeVielModel extends StatefulWidget {
  const HomeVielModel({super.key});

  @override
  State<HomeVielModel> createState() => _HomeVielModelState();
}

class _HomeVielModelState extends State<HomeVielModel> {
  late ActionButtonViewModel _actionButtonViewModel1;
  late ActionButtonViewModel _actionButtonViewModel2;
  late ActionButtonViewModel _actionButtonViewModel3;
  late ActionButtonViewModel _actionButtonViewModel4;
  late AvatarViewModel _AvatarViewModel;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _AvatarViewModel = AvatarViewModel(
      model: AvatarModel.small,
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
    _actionButtonViewModel1 = ActionButtonViewModel(
      size: ActionButtonSize.large,
      style: ActionButtonStyle.one,
      text: "Jogos",
      onPressed: () {},
    );
    _actionButtonViewModel2 = ActionButtonViewModel(
      size: ActionButtonSize.large,
      style: ActionButtonStyle.two,
      text: "Contatos",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ContactsViewMode()),
        );
      },
    );
    _actionButtonViewModel3 = ActionButtonViewModel(
      size: ActionButtonSize.large,
      style: ActionButtonStyle.three,
      text: "Pontos",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PointViewMode()),
        );
      },
    );
    _actionButtonViewModel4 = ActionButtonViewModel(
      size: ActionButtonSize.large,
      style: ActionButtonStyle.forr,
      text: "Agenda",
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SheduleViewMode()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w400),
          ),
          backgroundColor: PagerTwoColor,
          centerTitle: true,
        ),
        backgroundColor: PageOneColor,
        body: Column(
          children: [
            // dados do usuario
            Container(
              width: double.infinity,
              color: PagerTwoColor, // Mesma cor do AppBar
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.all(0),
                      child: Avatar(viewModel: _AvatarViewModel)),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Nome Sobrenome", // Exemplo de texto
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Primeiro par de botões
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: SizedBox(
                            width: 180,
                            height: 300,
                            child: ActionButton.instantiate(
                                viewModel: _actionButtonViewModel1),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: SizedBox(
                            width: 180,
                            height: 300,
                            child: ActionButton.instantiate(
                                viewModel: _actionButtonViewModel2),
                          ),
                        ),
                      ],
                    ),
                    // Segundo par de botões
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: SizedBox(
                            width: 180,
                            height: 300,
                            child: ActionButton.instantiate(
                                viewModel: _actionButtonViewModel3),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: SizedBox(
                            width: 180,
                            height: 300,
                            child: ActionButton.instantiate(
                                viewModel: _actionButtonViewModel4),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
