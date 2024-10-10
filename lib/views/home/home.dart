import 'package:appidoso1/DesignSystem/Components/action_button.dart';
import 'package:appidoso1/DesignSystem/Components/action_button_view_model.dart';
import 'package:flutter/material.dart';

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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _actionButtonViewModel1 = ActionButtonViewModel(
      size: ActionButtonSize.large,
      style: ActionButtonStyle.secondary,
      text: "Contatos",
      onPressed: () {},
    );
    _actionButtonViewModel2 = ActionButtonViewModel(
      size: ActionButtonSize.large,
      style: ActionButtonStyle.secondary,
      text: "jogos",
      onPressed: () {},
    );
    _actionButtonViewModel3 = ActionButtonViewModel(
      size: ActionButtonSize.large,
      style: ActionButtonStyle.secondary,
      text: "Agenda",
      onPressed: () {},
    );
    _actionButtonViewModel4 = ActionButtonViewModel(
      size: ActionButtonSize.large,
      style: ActionButtonStyle.secondary,
      text: "Pontos",
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: ActionButton.instantiate(
                        viewModel: _actionButtonViewModel1),
                  ),
                ],
              ),
            )));
  }
}
