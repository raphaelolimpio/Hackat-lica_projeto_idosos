import 'package:appidoso1/DesignSystem/Components/inputField/input_text_view_mode.dart';
import 'package:flutter/material.dart';

class Login {
  // Controladores para email e senha
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // ViewModels para os campos de texto
  late InputTextViewModel emailViewModel;
  late InputTextViewModel passwordViewModel;

  Login() {
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

  // Função de login
  void login() {
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
