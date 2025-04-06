import 'package:donut_app_4sa/utils/smoothie_tile.dart';
import 'package:flutter/material.dart';

class SmoothieTab extends StatelessWidget {
  // Lista de smoothies
  final List smoothieOnSale = [
    ["Kiwi", "56", "Fruta Fresca", Colors.green, "lib/images/kiwi_smoothie.png"],
    ["Limón", "45", "Smoothie Lab", Colors.greenAccent, "lib/images/limon_smoothie.png"],
    ["Jugo Verde", "46", "Smoothie Biliss", Colors.blueGrey, "lib/images/jugoverde_smoothie.png"],
    ["Pera", "50", "Tropical Twist", Colors.pinkAccent, "lib/images/pera_smoothie.png"],
    ["Naranja", "51", "Fruta / Energia", Colors.orange, "lib/images/naranja_smoothie.png"],
    ["Platano", "45", "Vital Smoothie", Colors.amber, "lib/images/platano_smoothie.png"],
    ["Mora", "38", "Smoothie Wave", Colors.lightBlueAccent, "lib/images/mora_smoothie.png"],
    ["Sandia", "40", "Vibe Smoothie", Colors.red, "lib/images/sandia_smoothie.png"],
  ];

  final Function(String, int) onSmoothieAdded;

  // Constructor con el evento onSmoothieAdded
  SmoothieTab({super.key, required this.onSmoothieAdded});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: smoothieOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return SmoothieTile(
          smoothieFlavor: smoothieOnSale[index][0],
          smoothiePrice: smoothieOnSale[index][1],
          smoothieStore: smoothieOnSale[index][2],
          smoothieColor: smoothieOnSale[index][3],
          imageName: smoothieOnSale[index][4],
          // Se pasa el onSmoothieAdded como parámetro
          onAdd: () {
            onSmoothieAdded(smoothieOnSale[index][0], int.parse(smoothieOnSale[index][1]));
          },
        );
      },
    );
  }
}
