import 'package:appidoso1/DesignSystem/Components/buildCustomCards/buildCustomCard_view_mode.dart';
import 'package:appidoso1/DesignSystem/shared/colors.dart';
import 'package:flutter/material.dart';

class MyinsctsViewMode extends StatelessWidget {
  final BuildCustomCardViewModel viewModel;
  final String? selectedDate;

  MyinsctsViewMode({required this.viewModel, this.selectedDate});

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
            // Cabeçalho
            Container(
              width: double.infinity,
              color: PagerTwoColor,
              padding: EdgeInsets.only(bottom: 30, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Minhas Inscrições",
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
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: PagerThreeColor,
                        border: Border.all(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(
                              color: Colors.grey, width: 2.0), // Gray border
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                        padding: EdgeInsets.all(
                            10.0), // Padding inside the container
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
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10),
                            Text(
                              viewModel.date,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            // Exibe a data selecionada
                            if (selectedDate != null)
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                      color: Colors.grey, width: 2.0),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.all(10.0),
                                child: SizedBox(
                                  // SizedBox with gray border
                                  width: double.maxFinite,
                                  child: Text(
                                    "Data selecionada: $selectedDate",
                                    style: TextStyle(fontSize: 18),
                                    textAlign:
                                        TextAlign.center, // Center the text
                                  ),
                                ),
                              ),
                          ],
                        ),
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
