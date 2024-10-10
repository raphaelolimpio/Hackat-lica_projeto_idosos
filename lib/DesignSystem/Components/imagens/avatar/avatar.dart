import 'package:appidoso1/DesignSystem/Components/imagens/avatar/avatar_view_mode.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class Avatar extends StatelessWidget {
  final AvatarViewModel viewModel;

  const Avatar({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center, // Centraliza a imagem e os ícones
      children: [
        // Exibe a imagem do avatar
        CircleAvatar(
          radius: viewModel.radius,
          backgroundImage: viewModel.image != null
              ? FileImage(File(viewModel.image!.path))
              : null, // Exibe a imagem carregada ou ícone padrão
          child: viewModel.image == null
              ? Icon(Icons.person, size: viewModel.radius)
              : null, // Ícone padrão quando não há imagem
        ),
        // Se a edição for permitida, mostra ícones para adicionar/remover imagem
        if (viewModel.allowEdit) ...[
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: () async {
                // Obtém a fonte da imagem (câmera ou galeria)
                final source = await viewModel.getImageSource();
                if (source != null) {
                  final pickedImage =
                      await ImagePicker().pickImage(source: source);
                  if (pickedImage != null) {
                    viewModel.updateImage(pickedImage); // Atualiza a imagem
                  }
                }
              },
              child: viewModel.addImageIcon, // Ícone de adicionar imagem
            ),
          ),
          if (viewModel.image != null)
            Positioned(
              top: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  viewModel.removeImage(); // Remove a imagem
                },
                child: viewModel.removeImageIcon, // Ícone de remover imagem
              ),
            ),
        ],
      ],
    );
  }
}
