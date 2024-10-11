import 'package:appidoso1/DesignSystem/Components/Buttons/action_button_view_model.dart';
import 'package:appidoso1/DesignSystem/Components/buildCustomCards/buildCustomCard_view_mode.dart';
import 'package:appidoso1/DesignSystem/shared/colors.dart';
import 'package:appidoso1/views/home/home_view_mode.dart';
import 'package:flutter/material.dart';

class inscriptionViewMode extends StatelessWidget {
  final BuildCustomCardViewModel viewModel;

  inscriptionViewMode({required this.viewModel});

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
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Center(
                              child: ElevatedButton(
                                onPressed: () {
                                  // Função para abrir o popup
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        backgroundColor: PagerThreeColor,
                                        title: Text(
                                            'Descrição:'), // Título do popup
                                        content: Column(
                                          mainAxisSize: MainAxisSize
                                              .min, // Conteúdo do popup
                                          children: [
                                            // Texto dentro do popup
                                            Text(
                                              viewModel.title,
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
                                            // Campo de texto dentro do popup
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
                                      BotonTwoColor, // Cor de fundo do botão
                                  foregroundColor:
                                      Colors.black, // Cor do texto no botão
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.0,
                                      vertical: 10.0), // Padding
                                  textStyle: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                child: Text('Descrição'), // Texto do botão
                              ),
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
                            onPressed: () {
                              // Navega para a página HomeViewModel
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
                              backgroundColor: BotonTwoColor, // Cor do botão
                              foregroundColor: Colors.black, // Cor do texto
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
