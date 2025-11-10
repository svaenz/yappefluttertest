import 'package:flutter/material.dart';
import "core/app_colors.dart";
import 'datos.dart';


void main() {
runApp(const MiApp());
}

class MiApp extends StatelessWidget {
const MiApp({super.key});

@override
Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Pantalla Clave',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: const ClavePage(),
    );
}
}

class ClavePage extends StatelessWidget {
    const ClavePage({super.key});

    void goto(BuildContext context) {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DatosPage()),);}

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Image.asset(
                'assets/yapelogo.png',
                width: 150,
                height: 150,
                fit: BoxFit.contain,
                ),

                const SizedBox(height: 40),

                Container(
                margin: const EdgeInsets.symmetric(horizontal: 32),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                    children: [
                    const Text(
                        'Ingresa tu clave',
                        style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                        ),
                    ),
                    const SizedBox(height: 20),

                    GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 3,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        children: [
                        for (var n in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'])
                            ElevatedButton(
                            onPressed: () => {goto(context)},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.whiteButton,
                                shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),),
                                padding: const EdgeInsets.symmetric(vertical: 18),
                                elevation: 2,
                            ),
                            child: Text(
                                n,
                                style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: AppColors.primary,
                                ),
                            ),
                            ),
                        ],
                    ),

                    const SizedBox(height: 16),

                    const Text(
                        '¿OLVIDASTE TU CLAVE?',
                        style: TextStyle(
                        color: AppColors.secondary,
                        fontWeight: FontWeight.bold,
                        ),
                    ),
                    ],
                ),
                ),
            ],
            ),
        ),
        );
    }
}