import 'package:appidoso1/DesignSystem/Components/Buttons/action_button.dart';
import 'package:appidoso1/DesignSystem/Components/Buttons/action_button_view_model.dart';
import 'package:appidoso1/DesignSystem/shared/colors.dart';
import 'package:flutter/material.dart';

class PointViewMode extends StatefulWidget {
  const PointViewMode({super.key});

  @override
  State<PointViewMode> createState() => _PointViewModeState();
}

class _PointViewModeState extends State<PointViewMode> {
  late ActionButtonViewModel _actionButtonViewModel1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _actionButtonViewModel1 = ActionButtonViewModel(
      size: ActionButtonSize.medium,
      style: ActionButtonStyle.one,
      text: "Resgatar",
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: SizedBox(
                      width: 200,
                      height: 200,
                      child: Text(
                        "", // Exemplo de texto
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(5.0),
                    child: SizedBox(
                      width: 120,
                      height: 50,
                      child: ActionButton.instantiate(
                          viewModel: _actionButtonViewModel1),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SingleChildScrollView(
                    child: Container(
                      width: double.infinity,
                      // Aplicar borda ao Container
                      decoration: BoxDecoration(
                        color: PagerThreeColor, // Cor de fundo
                        border: Border.all(
                          // Adicionar borda
                          color: Colors.white,
                          width: 2.0,
                        ),
                        borderRadius:
                            BorderRadius.circular(10), // Bordas arredondadas
                      ), // Mesma cor do AppBar
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: SizedBox(
                              width: 200,
                              height: 420,
                              child: Text(
                                "", // Exemplo de texto
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
