import 'package:appidoso1/DesignSystem/Components/buildCustomCards/buildCustomCard_view_mode.dart';
import 'package:appidoso1/DesignSystem/shared/colors.dart';
import 'package:flutter/material.dart';

class RedeemViewMode extends StatelessWidget {
  final BuildCustomCardViewModel viewModel;

  RedeemViewMode({required this.viewModel});

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
            // Dados do usuário
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
                    // Adicionando uma SizedBox para encapsular os campos
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
                          // Texto na parte superior
                          Text(
                            "Nome",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center, // Centraliza o texto
                          ),
                          SizedBox(height: 20),

                          // Informações do botão selecionado (título, subtítulo e data)
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
                                  viewModel.title,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  viewModel.subtitle,
                                  textAlign:
                                      TextAlign.center, // Centraliza o texto
                                ),
                                SizedBox(height: 10),
                                Text(
                                  viewModel.date,
                                  textAlign:
                                      TextAlign.center, // Centraliza o texto
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),

                          // Campos de texto e checkboxes
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("02/02/2024:"),
                                Checkbox(value: false, onChanged: (value) {}),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("03/03/2024:"),
                                Checkbox(value: false, onChanged: (value) {}),
                              ],
                            ),
                          ),

                          // Botão no final
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () => viewModel.onButtonPressed(context),
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
                            child: Text("Finalizar"), // Texto do botão
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
