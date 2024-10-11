import 'package:appidoso1/DesignSystem/Components/Buttons/action_button.dart';
import 'package:appidoso1/DesignSystem/Components/Buttons/action_button_view_model.dart';
import 'package:appidoso1/DesignSystem/Components/buildCustomCards/buildCustomCard_view_mode.dart';
import 'package:appidoso1/DesignSystem/Components/buildCustomCards/buildcunstomcard.dart';
import 'package:appidoso1/DesignSystem/shared/colors.dart';
import 'package:appidoso1/views/redeem/redeem_view_mode.dart';
import 'package:flutter/material.dart';

class SheduleViewMode extends StatefulWidget {
  const SheduleViewMode({super.key});

  @override
  State<SheduleViewMode> createState() => _SheduleViewModeState();
}

class _SheduleViewModeState extends State<SheduleViewMode> {
  late ActionButtonViewModel _actionButtonViewModel1;
  late BuildCustomCardViewModel _BuildCustomCardViewModel1;
  late BuildCustomCardViewModel _BuildCustomCardViewModel2;
  late BuildCustomCardViewModel _BuildCustomCardViewModel3;
  late BuildCustomCardViewModel _BuildCustomCardViewModel4;
  late BuildCustomCardViewModel _BuildCustomCardViewModel5;
  late BuildCustomCardViewModel _BuildCustomCardViewModel6;
  late BuildCustomCardViewModel _BuildCustomCardViewModel7;
  late BuildCustomCardViewModel _BuildCustomCardViewModel8;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _actionButtonViewModel1 = ActionButtonViewModel(
      size: ActionButtonSize.medium,
      style: ActionButtonStyle.one,
      text: "Minhas Inscriçoes",
      onPressed: () {},
    );
    _BuildCustomCardViewModel1 = BuildCustomCardViewModel(
      title: "Caminhada",
      subtitle: 'Responsável:\n João Silva',
      date: 'Dias:\n 02/02/2024\n 03/03/2024',
      buttonText: 'Inscrever',
      onButtonPressed: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RedeemViewMode(
              viewModel: _BuildCustomCardViewModel1,
            ),
          ),
        );
      },
    );
    _BuildCustomCardViewModel2 = BuildCustomCardViewModel(
      title: "Natação ou Hidroginástica",
      subtitle: 'Responsavel:\n João Silva',
      date: 'Dias:\n 02/02/2024\n 03/03/2024',
      buttonText: 'Inscrver',
      onButtonPressed: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RedeemViewMode(
              viewModel: _BuildCustomCardViewModel2,
            ),
          ),
        );
      },
    );
    _BuildCustomCardViewModel3 = BuildCustomCardViewModel(
      title: "Aulas de Tai Chi",
      subtitle: 'Responsavel:\n João Silva',
      date: 'Dias:\n 02/02/2024\n 03/03/2024',
      buttonText: 'Inscrver',
      onButtonPressed: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RedeemViewMode(
              viewModel: _BuildCustomCardViewModel3,
            ),
          ),
        );
      },
    );
    _BuildCustomCardViewModel4 = BuildCustomCardViewModel(
      title: "Pilates p/ Terceira Idade",
      subtitle: 'Responsavel:\n João Silva',
      date: 'Dias:\n 02/02/2024\n 03/03/2024',
      buttonText: 'Inscrver',
      onButtonPressed: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RedeemViewMode(
              viewModel: _BuildCustomCardViewModel4,
            ),
          ),
        );
      },
    );

    _BuildCustomCardViewModel5 = BuildCustomCardViewModel(
      title: "Aulas de Alongamento",
      subtitle: 'Responsavel:\n João Silva',
      date: 'Dias:\n 02/02/2024\n 03/03/2024',
      buttonText: 'Inscrver',
      onButtonPressed: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RedeemViewMode(
              viewModel: _BuildCustomCardViewModel5,
            ),
          ),
        );
      },
    );
    _BuildCustomCardViewModel6 = BuildCustomCardViewModel(
      title: "Yoga p/Idosos",
      subtitle: 'Responsavel:\n João Silva',
      date: 'Dias:\n 02/02/2024\n 03/03/2024',
      buttonText: 'Inscrver',
      onButtonPressed: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RedeemViewMode(
              viewModel: _BuildCustomCardViewModel6,
            ),
          ),
        );
      },
    );
    _BuildCustomCardViewModel7 = BuildCustomCardViewModel(
      title: "Dança Senior",
      subtitle: 'Responsavel:\n João Silva',
      date: 'Dias:\n 02/02/2024\n 03/03/2024',
      buttonText: 'Inscrver',
      onButtonPressed: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RedeemViewMode(
              viewModel: _BuildCustomCardViewModel7,
            ),
          ),
        );
      },
    );
    _BuildCustomCardViewModel8 = BuildCustomCardViewModel(
      title: "Ginástica para Tereira Idade",
      subtitle: 'Responsavel:\n João Silva',
      date: 'Dias:\n 02/02/2024\n 03/03/2024',
      buttonText: 'Inscrver',
      onButtonPressed: (BuildContext context) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RedeemViewMode(
              viewModel: _BuildCustomCardViewModel8,
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
              padding: EdgeInsets.only(bottom: 30, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Cronograma da Semana", // Exemplo de texto
                    style: TextStyle(color: Colors.white, fontSize: 30.0),
                  ),
                  const SizedBox(
                    width: 10,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: SizedBox(
                            width: 200,
                            height: 50,
                            child: ActionButton.instantiate(
                                viewModel: _actionButtonViewModel1),
                          ),
                        ),
                      ],
                    ),
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
                                        "Calendário - Fevereiro\n Presencial", // Exemplo de texto
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
                                        BuildCustomCard(
                                          viewModel: _BuildCustomCardViewModel1,
                                        ),
                                        BuildCustomCard(
                                          viewModel: _BuildCustomCardViewModel2,
                                        ),
                                        BuildCustomCard(
                                          viewModel: _BuildCustomCardViewModel3,
                                        ),
                                        BuildCustomCard(
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
                    const SizedBox(
                      width: 10,
                    ),
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
                                        "Calendário - Fevereiro\n Online", // Exemplo de texto
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
                                        BuildCustomCard(
                                          viewModel: _BuildCustomCardViewModel5,
                                        ),
                                        BuildCustomCard(
                                          viewModel: _BuildCustomCardViewModel6,
                                        ),
                                        BuildCustomCard(
                                          viewModel: _BuildCustomCardViewModel7,
                                        ),
                                        BuildCustomCard(
                                          viewModel: _BuildCustomCardViewModel8,
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
