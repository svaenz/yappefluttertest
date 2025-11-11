import 'package:flutter/material.dart';
import 'package:flutter_yape/core/app_colors.dart';


class block extends StatelessWidget {
    final String text;
    const block({required this.text});

    @override
    Widget build(BuildContext context) {
        return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: AppColors.primary_a, width: 1.3),
        ),
        child: Text( text,style: const TextStyle(color: AppColors.primary),),
        );
    }
}

class YapearServicioPage extends StatelessWidget {
    const YapearServicioPage({super.key});

    @override
    Widget build(BuildContext context) {
        return Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Container(
                width: double.infinity,
                padding: const EdgeInsets.all(14),
                color: AppColors.primary,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const Center(
                        child: Text(
                        "Yapear servicios",
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                        ),
                        ),
                    ),
                    const SizedBox(height: 20),

                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                        color: AppColors.primary_a,
                        borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                            children: [
                            const Icon(Icons.search, color: AppColors.white),
                            const SizedBox(width: 8),
                            Expanded(
                            child: TextField(
                                decoration: const InputDecoration(
                                hintText: "Busca una empresa",
                                hintStyle: TextStyle(color: AppColors.white),
                                border: InputBorder.none,
                                ),
                                style: const TextStyle(color: AppColors.white),
                            ),
                            ),
                            ],
                        ),
                    ),

                    const SizedBox(height: 15),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            block(text: "Luz"),
                            block(text: "Agua"),
                            block(text: "Gas"),
                            block(text: "Telefonía e Internet"),
                        ],
                        ),
                    ),
                    ],
                ),
                ),

                const SizedBox(height: 20),

                const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                    "Te recomendamos yapear",
                    style: TextStyle(
                    fontSize: 18,
                    color: AppColors.primary_a,
                    fontWeight: FontWeight.bold,
                    ),
                ),
                ),
                const SizedBox(height: 12),

                const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                    "Tus servicios recientes",
                    style: TextStyle(
                    fontSize: 18,
                    color: AppColors.primary_a,
                    fontWeight: FontWeight.bold,
                    ),
                ),
                ),
                const SizedBox(height: 12),

                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                    child: Row(
                        children: [
                            Container(
                                width: 48,
                                height: 48,
                                decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(8),),
                            ),
                        const SizedBox(width: 16),
                        Expanded(
                            child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                                Text("PagoEfectivo",
                                    style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    ),
                                ),
                                Text(
                                "PagoEfectivo Soles",
                                style: TextStyle(fontSize: 14),
                                ),
                            ],
                            ),
                        ),
                        ],
                    ),
                ),
                ),

                const SizedBox(height: 20),
            ],
            ),
        ),
        );
    }
}


