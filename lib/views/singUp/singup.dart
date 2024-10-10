import 'package:appidoso1/DesignSystem/Components/LinkedLabel/linked_label_view-mode.dart';
import 'package:appidoso1/DesignSystem/Components/inputField/input_text_view_mode.dart';
import 'package:flutter/material.dart';

import '../../DesignSystem/Components/LinkedLabel/linked_label.dart';

class SingUp {
  // Controladores para email e senha
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // ViewModels para os campos de texto
  late InputTextViewModel emailViewModel;
  late InputTextViewModel passwordViewModel;

  SingUp() {
    // Inicializando os ViewModels com validação
    emailViewModel = InputTextViewModel(
      controller: _emailController,
      placeholder: 'Email',
      password: false,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, insira seu email';
        }
        // Validações adicionais de email
        return null;
      },
    );

    passwordViewModel = InputTextViewModel(
      controller: _passwordController,
      placeholder: 'Senha',
      password: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Por favor, insira sua senha';
        }
        // Validações adicionais de senha
        return null;
      },
    );
  }
  Widget buildCustomCheckbox({
    required bool isChecked,
    required ValueChanged<bool?> onChanged,
    required LinkedLabelViewModel linkedLabelViewModel,
  }) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Checkbox(
            value: isChecked,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(50.0), // Define a checkbox redonda
            ),
            onChanged: onChanged, // Passa o callback para gerenciar o estado
          ),
          GestureDetector(
            onTap: () {
              // Chama o método ao clicar no label
              // O contexto deve ser gerenciado onde o método é chamado
            },
            child: LinkedLabel.instantiate(viewModel: linkedLabelViewModel),
          )
        ],
      ),
    );
  }

  // Função de login
  void singUp() {
    final email = _emailController.text;
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      print('Email ou senha vazios');
      return;
    }

    // Lógica de autenticação ou requisição
    print('Tentando logar com $email e $password');
    // Aqui você pode fazer a requisição HTTP ou integração com algum serviço de autenticação
  }

  // Método para liberar recursos
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
  }

  void OnLinktTap(BuildContext context) {
    print("clicado");
  }
}
