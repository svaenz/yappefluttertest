import 'package:flutter/material.dart';
import 'package:flutter_yape/core/app_colors.dart';
import 'yapearServicio.dart';

class PerfilPage extends StatelessWidget {
    const PerfilPage({super.key});
    void goto(BuildContext context) {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const YapearServicioPage()),);}

    Widget block(IconData icono, String texto, BuildContext context) {
        return InkWell(
        onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Abrir: $texto')),
            );
        },
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
            children: [
                Icon(icono, color: AppColors.primary),
                const SizedBox(width: 15),
                Expanded(
                child: Text(
                    texto,
                    style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
                ),
                const Icon(Icons.chevron_right, color: AppColors.whiteButton),
            ],
            ),
        ),
        );
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
            title: const Text('Mi Perfil',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black), ),
            backgroundColor: AppColors.white,
            elevation: 0,
            centerTitle: false,
        ),
        body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            children: [
            const Text("Mi cuenta",
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                ),
            ),
            const SizedBox(height: 5),
            block(Icons.person_outline, "Mis datos", context),
            block(Icons.lock_outline, "Cambiar mi clave", context),
            block(Icons.qr_code, "Mi QR", context),
            block(Icons.location_on_outlined, "Mis direcciones", context),
            block(Icons.delete_outline, "Eliminar mi cuenta", context),
            const SizedBox(height: 15),
            const Text("Ajustes",
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                ),
            ),
            const SizedBox(height: 5),
            block(Icons.fingerprint, "Biometría digital", context),
            block(Icons.shopping_cart_outlined, "Compras por internet", context),
            block(Icons.security_outlined, "Confirmación de yapeo alto", context),

            const SizedBox(height: 10),

            ElevatedButton(
                onPressed: () => goto(context),
                style: ElevatedButton.styleFrom(backgroundColor: AppColors.primary,),
                child: const Text("Siguiente",style: TextStyle(color: Colors.white),),
                ),
            ],

            


        ),

        
        );
        
    }
}