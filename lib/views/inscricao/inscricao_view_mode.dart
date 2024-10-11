import 'package:appidoso1/DesignSystem/Components/Buttons/action_button_view_model.dart';
import 'package:appidoso1/DesignSystem/Components/buildCustomCards/buildCustomCard_view_mode.dart';
import 'package:appidoso1/DesignSystem/shared/colors.dart';
import 'package:appidoso1/views/home/home_view_mode.dart';
import 'package:flutter/material.dart';

class InscricaoViewMode extends StatefulWidget {
  final BuildCustomCardViewModel viewModel;

  InscricaoViewMode({required this.viewModel});

  @override
  _InscricaoViewModeState createState() => _InscricaoViewModeState();
}

class _InscricaoViewModeState extends State<InscricaoViewMode> {
  // Variáveis para armazenar o estado das checkboxes
  bool _checkboxValue1 = false;
  bool _checkboxValue2 = false;

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
              padding: EdgeInsets.only(bottom: 30, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Inscrição", // Exemplo de texto
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  const SizedBox(width: 10),
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
                          Text(
                            "Nome",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center, // Centraliza o texto
                          ),
                          SizedBox(height: 20),

                          Container(
                            padding: EdgeInsets.all(15), // Aumentando o padding
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: PagerThreeColor,
                              border:
                                  Border.all(color: Colors.white, width: 2.0),
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
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        backgroundColor: PagerThreeColor,
                                        title: Text(
                                            'Descrição:'), // Título do popup
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              widget.viewModel.title,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height: 20),
                                            Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: SizedBox(
                                                width: 100,
                                                height: 100,
                                                child: Text(
                                                  "", // Exemplo de texto
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 30.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          TextButton(
                                            child: Text('Fechar'),
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pop(); // Fecha o popup
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      BotonTwoColor, // Cor do botão
                                  foregroundColor: Colors.black, // Cor do texto
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 10.0),
                                  textStyle: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                child: Text('Descrição'),
                              ),
                            ),
                          ),

                          SizedBox(height: 20),

                          // Checkboxes
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("16:30\n 17:30"),
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
                                Text("18:30\n 19:30"),
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
