import 'package:appidoso1/DesignSystem/Components/BuildCustomCard2/BuildCustomCard2.dart';
import 'package:appidoso1/DesignSystem/shared/colors.dart';
import 'package:flutter/material.dart';

class BuildCustomCard2 extends StatelessWidget {
  final BuildCustomCardViewModel2 viewModel;

  const BuildCustomCard2({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        width: 320,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    viewModel.title, // Título passado no viewModel
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        viewModel.subtitle,
                      ) // Subtítulo passado no viewModel
                      ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  child: Text(
                    viewModel.date, // Data passada no viewModel
                  ),
                ),
                const SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () => viewModel.onButtonPressed(context),
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                    textStyle: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    backgroundColor: BotonTwoColor,
                    foregroundColor: Colors.black,
                  ), // Função do botão
                  child: Text(viewModel.buttonText), // Texto do botão
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
