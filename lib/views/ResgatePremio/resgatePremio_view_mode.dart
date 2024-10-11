import 'package:appidoso1/DesignSystem/Components/BuildCustomCard2/BuildCustomCard2.dart';
import 'package:appidoso1/DesignSystem/Components/Buttons/action_button_view_model.dart';
import 'package:appidoso1/DesignSystem/Components/buildCustomCards/buildCustomCard_view_mode.dart';
import 'package:appidoso1/DesignSystem/shared/colors.dart';
import 'package:appidoso1/views/home/home_view_mode.dart';
import 'package:flutter/material.dart';

class ResgatepremioViewMode extends StatefulWidget {
  final BuildCustomCardViewModel2 viewModel;

  ResgatepremioViewMode({required this.viewModel});

  @override
  _ResgatepremioViewModeState createState() => _ResgatepremioViewModeState();
}

class _ResgatepremioViewModeState extends State<ResgatepremioViewMode> {
  // Variáveis para armazenar o estado das checkboxes
  bool _checkboxValue1 = false;
  bool _checkboxValue2 = false;
  bool _checkboxValue3 = false;

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
            Container(
              width: double.infinity,
              color: PagerTwoColor, // Mesma cor do AppBar
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                // Use Column para empilhar os widgets verticalmente
                children: [
                  Padding(
                    padding: EdgeInsets.all(
                        02), // Ajuste o padding conforme necessário
                    child: Text(
                      "Nome", // Exemplo de texto
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8.0), // Ajuste o padding conforme necessário
                    child: Text(
                      "Você Possui: 100 Pontos", // Exemplo de texto
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                        02), // Ajuste o padding conforme necessário
                    child: Text(
                      "RESGATE", // Exemplo de texto
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      width: double.maxFinite, // Tamanho máximo para largura
                      decoration: BoxDecoration(
                        color: PagerThreeColor, // Cor de fundo
                        border: Border.all(
                            color: Colors.white, width: 2.0), // Borda
                        borderRadius: BorderRadius.circular(
                            10), // Bordas arredondadas (opcional)
                      ),
                      padding: EdgeInsets.all(20.0), // Padding interno
                      child: Column(
                        children: [
                          SizedBox(height: 20),

                          Container(
                            padding: EdgeInsets.all(15), // Aumentando o padding
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: PagerThreeColor,
                              border:
                                  Border.all(color: Colors.black, width: 2.0),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  widget.viewModel.title,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  widget.viewModel.subtitle,
                                  textAlign:
                                      TextAlign.center, // Centraliza o texto
                                ),
                                SizedBox(height: 10),
                                Text(
                                  widget.viewModel.date,
                                  textAlign:
                                      TextAlign.center, // Centraliza o texto
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: EdgeInsets.all(
                                02), // Ajuste o padding conforme necessário
                            child: Text(
                              "Retirar em:", // Exemplo de texto
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),

                          SizedBox(height: 20),

                          // Checkboxes
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Local1"),
                                Checkbox(
                                  value: _checkboxValue1,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _checkboxValue1 = value ?? false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Local2"),
                                Checkbox(
                                  value: _checkboxValue2,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _checkboxValue2 = value ?? false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Local3"),
                                Checkbox(
                                  value: _checkboxValue3,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _checkboxValue3 = value ?? false;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeVielModel()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 15.0),
                              textStyle: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                              backgroundColor: BotonTwoColor,
                              foregroundColor: Colors.black,
                            ),
                            child: Text("Finalizar"),
                          ),
                        ],
                      ),
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
