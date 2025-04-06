import 'package:donut_app_4sa/utils/pancakes_tile.dart';
import 'package:flutter/material.dart';

class PancakesTab extends StatelessWidget {
  final Function(String flavor, int price) onPancakeAdded;

  final List pancakesOnSale = [
    ["Fresa", "26", "Pancakes Wave", Colors.pink, "lib/images/fresa_pancakes.png"],
    ["Mantequilla", "30", "Pancakes World", Colors.amber, "lib/images/mantequilla_pancakes.png"],
    ["Yogurt Con Fresa", "22", "Pancake House", Colors.red, "lib/images/yogurtfresa_pancakes.png"],
    ["Arandanos", "33", "Pancakes Factory", Colors.purple, "lib/images/arandanos_pancakes.png"],
    ["Miel", "30", "Pancakes Dreams", Colors.brown, "lib/images/miel_pancakes.png"],
    ["Leche", "30", "Dulce Pancakes", Colors.brown, "lib/images/leche_pancakes.png"],
    ["Especial", "38", "Fluffy Pancakes", Colors.brown, "lib/images/especial_pancakes.png"],
    ["Platano", "32", "Sweet Pancakes", Colors.amberAccent, "lib/images/platano_panckakes.png"],
  ];

   PancakesTab({super.key, required this.onPancakeAdded});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: pancakesOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return PancakesTile(
          pancakesFlavor: pancakesOnSale[index][0],
          pancakesPrice: pancakesOnSale[index][1],
          pancakesStore: pancakesOnSale[index][2],
          pancakesColor: pancakesOnSale[index][3],
          imageName: pancakesOnSale[index][4],
          onAdd: () {
            onPancakeAdded(
              pancakesOnSale[index][0],
              int.parse(pancakesOnSale[index][1]),
            );
          },
        );
      },
    );
  }
}
