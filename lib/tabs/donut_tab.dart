import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/donut_tile.dart';

class DonutTab extends StatelessWidget {

  // Lista de donuts
  final List donutsOnSale = [
    ["Ice Cream", "36", "Krispy Kream", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", "Dunkin Donuts", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "44", "wonder", Colors.purple, "lib/images/grape_donut.png"],
    ["Chocolate", "45", "Donuts", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Chocolate Almendras", "50", "Dona Magic", Colors.brown, "lib/images/chocolatealmendras_donut.png"],
    ["Fresa Doble", "44", "Dona Dreams", Colors.pink, "lib/images/fresa_donut.png"],
    ["Chocolate Fresa", "52", "Dona & Café", Colors.brown, "lib/images/chocolatefresa_donut.png"],
    ["Mentos", "35", "La casa de Donas", Colors.green, "lib/images/menta_donut.png"],
  ];

  final Function(String flavor, int price) onDonutAdded; // Callback para agregar al carrito

  DonutTab({super.key, required this.onDonutAdded});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: 8,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutStore: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
          onAdd: () {
            int price = int.parse(donutsOnSale[index][1]);
            onDonutAdded(donutsOnSale[index][0], price);
          },
        );
      },
    );
  }
}
