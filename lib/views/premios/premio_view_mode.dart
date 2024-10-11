import 'package:appidoso1/DesignSystem/Components/BuildCustomCard2/BuildCustomCard2.dart';
import 'package:appidoso1/DesignSystem/Components/BuildCustomCard2/BuildCustomCardViewModel2.dart';

import 'package:appidoso1/DesignSystem/shared/colors.dart';

import 'package:appidoso1/views/ResgatePremio/resgatePremio_view_mode.dart';

import 'package:flutter/material.dart';

class PremioViewMode extends StatefulWidget {
  const PremioViewMode({super.key});

  @override
  State<PremioViewMode> createState() => _SheduleViewModeState();
}

class _SheduleViewModeState extends State<PremioViewMode> {
  late BuildCustomCardViewModel2 _BuildCustomCardViewModel1;
  late BuildCustomCardViewModel2 _BuildCustomCardViewModel2;
  late BuildCustomCardViewModel2 _BuildCustomCardViewModel3;
  late BuildCustomCardViewModel2 _BuildCustomCardViewModel4;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _BuildCustomCardViewModel1 = BuildCustomCardViewModel2(
      title: "Prêmio 1",
      subtitle: "50 Pontos",
      date: '1 par de sapatos',
      buttonText: 'Resgatar',
      onButtonPressed: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResgatepremioViewMode(
              viewModel: _BuildCustomCardViewModel1,
            ),
          ),
        );
      },
    );
    _BuildCustomCardViewModel2 = BuildCustomCardViewModel2(
      title: "Prêmio 2",
      subtitle: "100 Pontos",
      date: 'Conjunto Tupperware',
      buttonText: 'Resgatar',
      onButtonPressed: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResgatepremioViewMode(
              viewModel: _BuildCustomCardViewModel2,
            ),
          ),
        );
      },
    );
    _BuildCustomCardViewModel3 = BuildCustomCardViewModel2(
      title: "Prêmio 3",
      subtitle: "150 Pontos",
      date: 'Jogo de panelas',
      buttonText: 'Resgatar',
      onButtonPressed: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResgatepremioViewMode(
              viewModel: _BuildCustomCardViewModel3,
            ),
          ),
        );
      },
    );
    _BuildCustomCardViewModel4 = BuildCustomCardViewModel2(
      title: "Prêmio 4",
      subtitle: "200 Pontos",
      date: 'Surpresa...',
      buttonText: 'Resgatar',
      onButtonPressed: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResgatepremioViewMode(
              viewModel: _BuildCustomCardViewModel4,
            ),
          ),
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
                                        "Prêmios", // Exemplo de texto
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 19.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        BuildCustomCard2(
                                          viewModel: _BuildCustomCardViewModel1,
                                        ),
                                        BuildCustomCard2(
                                          viewModel: _BuildCustomCardViewModel2,
                                        ),
                                        BuildCustomCard2(
                                          viewModel: _BuildCustomCardViewModel3,
                                        ),
                                        BuildCustomCard2(
                                          viewModel: _BuildCustomCardViewModel4,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
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
