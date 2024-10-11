import 'package:appidoso1/DesignSystem/Components/Buttons/action_button.dart';
import 'package:appidoso1/DesignSystem/Components/Buttons/action_button_view_model.dart';
import 'package:appidoso1/DesignSystem/shared/colors.dart';
import 'package:appidoso1/views/premios/premio_view_mode.dart';
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
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 8.0), // Ajuste o padding conforme necessário
                    child: Text(
                      "Você Possui: 100 Pontos", // Exemplo de texto
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                        10.0), // Ajuste o padding conforme necessário
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment
                          .start, // Alinha os itens à esquerda
                      children: [
                        Text(
                          "Prêmios:", // Texto antes do ícone
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_forward_outlined,
                                color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              "50 pontos: 1 par de sapatos", // Texto da descrição
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            // Espaço entre o texto e o ícone
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_forward_outlined,
                                color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              "100 pontos: Conjunto Tupperware", // Texto da descrição
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            // Espaço entre o texto e o ícone
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_forward_outlined,
                                color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              "150 pontos: Jogo de panelas", // Texto da descrição
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),
                            // Espaço entre o texto e o ícone
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.arrow_forward_outlined,
                                color: Colors.white),
                            SizedBox(width: 10),
                            Text(
                              "200 pontos: Surpresa...", // Texto da descrição
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20.0),
                            ),

                            // Espaço entre o texto e o ícone
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PremioViewMode()),
                              );
                            },,
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 50.0, vertical: 15.0),
                              textStyle: TextStyle(
                                fontSize: 16.0,
                              ),
                              backgroundColor: BotonOneColor,
                              foregroundColor: Colors.white,
                            ),
                            child: Text(
                              "Resgatar",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w400),
                            ), // Texto do botão
                          ),
                        )
                      ],
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
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SingleChildScrollView(
                            child: Container(
                              width: double.maxFinite,
                              // Aplicar borda ao Container
                              decoration: BoxDecoration(
                                color: PagerThreeColor, // Cor de fundo
                                border: Border.all(
                                  // Adicionar borda
                                  color: Colors.white,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(
                                    10), // Bordas arredondadas
                              ), // Mesma cor do AppBar
                              padding: EdgeInsets.only(top: 10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: SizedBox(
                                      width: 200,
                                      child: Text(
                                        "Histórico", // Exemplo de texto
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 25.0, vertical: .0),
                                        textStyle: TextStyle(
                                          fontSize: 16.0,
                                        ),
                                        backgroundColor: BotonTwoColor,
                                        foregroundColor: Colors.black,
                                      ),
                                      child: Text(
                                        "Ver Tudo",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ), // Texto do botão
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    //tela do meio
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
