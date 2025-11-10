import 'package:flutter/material.dart';
import 'core/app_colors.dart';

class DatosPage extends StatelessWidget {
    const DatosPage({super.key});

    Widget _buildItem({ required String titulo, required String val,})
        {
            return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                titulo,
                style: const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                ),
                ),
                const SizedBox(height: 4),
                Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    Expanded(
                    child: Text(
                        val,
                        style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        ),
                    ),
                    ),
                    const Icon(Icons.zoom_in, color: AppColors.primary, size: 20),
                ],
                ),
                const SizedBox(height: 15),
                Container(height: 1, color: Color(0xFFDDDDDD)),
                const SizedBox(height: 15),
            ],
            );
        }

        @override
        Widget build(BuildContext context) {
            return Scaffold(
            backgroundColor: AppColors.white,
            body: Column(
                children: [
                // HEADER
                Container(
                    width: double.infinity,
                    color: AppColors.primary,
                    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
                    child: const Text("Mis datos",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                    ),
                    ),
                ),

                // CONTENIDO
                Expanded(
                    child: SingleChildScrollView(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        _buildItem(titulo: "Nombres", val: "Usuario Saenz"),
                        _buildItem(titulo: "Número de celular", val: "*** *** 123"),
                        _buildItem(titulo: "Correo Electronico",val: "*****abcc@gmail.com"),
                        _buildItem(titulo: "Número de tarjeta",val: "**** **** **** 1234"),
                        _buildItem(titulo: "Numero de cuenta",val: "**** ******** 1234"),
                        _buildItem(titulo: "Número de cuenta Interbancario (CCI)",val: "*** *** ********** 0000"),
                        ],
                    ),
                    ),
                ),
                ],
            ),
        );
    }
}
