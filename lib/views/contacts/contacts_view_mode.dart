import 'package:appidoso1/DesignSystem/Components/Buttons/action_button.dart';
import 'package:appidoso1/DesignSystem/Components/Buttons/action_button_view_model.dart';
import 'package:appidoso1/DesignSystem/shared/colors.dart';
import 'package:flutter/material.dart';

class ContactsViewMode extends StatefulWidget {
  const ContactsViewMode({super.key});

  @override
  State<ContactsViewMode> createState() => _ContactsViewModeState();
}

class _ContactsViewModeState extends State<ContactsViewMode> {
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
      style: ActionButtonStyle.five,
      text: "Contato1",
      onPressed: () {},
    );
    _actionButtonViewModel2 = ActionButtonViewModel(
      size: ActionButtonSize.large,
      style: ActionButtonStyle.six,
      text: "Contato2",
      onPressed: () {},
    );
    _actionButtonViewModel3 = ActionButtonViewModel(
      size: ActionButtonSize.large,
      style: ActionButtonStyle.seven,
      text: "Contato3",
      onPressed: () {},
    );
    _actionButtonViewModel4 = ActionButtonViewModel(
      size: ActionButtonSize.large,
      style: ActionButtonStyle.eigth,
      text: "Contato4",
      onPressed: () {},
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 30.0),
                    child: Column(
                      children: [
                        Text(
                          "Contatos dos Resposáveis", // Exemplo de texto
                          style: TextStyle(color: Colors.white, fontSize: 25.0),
                        ),
                      ],
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
