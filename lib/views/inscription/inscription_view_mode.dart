import 'package:appidoso1/DesignSystem/shared/colors.dart';
import 'package:flutter/material.dart';

class InscriptionViewMode extends StatefulWidget {
  const InscriptionViewMode({super.key});

  @override
  State<InscriptionViewMode> createState() => _InscriptionViewModeState();
}

class _InscriptionViewModeState extends State<InscriptionViewMode> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
                  Text(
                    "Cronograma da Semana", // Exemplo de texto
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
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
                              width: double.infinity,
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
                                      height: 550,
                                      child: Text(
                                        "Inscrição", // Exemplo de texto
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 30.0),
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
