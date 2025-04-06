import 'package:flutter/material.dart';
import 'package:donut_app_4sa/utils/burger_tile.dart';

class BurgerTab extends StatelessWidget {
  final List burgerOnSale = [
    ["Arrachera", "56", "Mc' Donald's", Colors.blue, "lib/images/arrachera_burger.png"],
    ["Pechuga", "68", "Burger King", Colors.red, "lib/images/pechuga_burger.png"],
    ["Cheese", "59", "Wendy's", Colors.purple, "lib/images/cheese_burger.png"],
    ["Crispy", "70", "Carl's Jr", Colors.brown, "lib/images/crispy_burger.png"],
    ["Simple", "50", "Fat Burger", Colors.brown, "lib/images/simple_burger.png"],
    ["Doble Crispy", "60", "Hardees's", Colors.brown, "lib/images/doblecrispy_burger.png"],
    ["Doble Arrachera", "90", "Shake Shack", Colors.brown, "lib/images/doblearrachera_burger.png"],
    ["Especial", "65", "Culver's", Colors.brown, "lib/images/especial_burger.png"],
  ];

  final Function(String flavor, int price) onBurgerAdded;

  BurgerTab({super.key, required this.onBurgerAdded});

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
        return BurgerTile(
          burgerFlavor: burgerOnSale[index][0],
          burgerPrice: burgerOnSale[index][1],
          burgerStore: burgerOnSale[index][2],
          burgerColor: burgerOnSale[index][3],
          imageName: burgerOnSale[index][4],
          onAdd: () {
            int price = int.parse(burgerOnSale[index][1]);
            onBurgerAdded(burgerOnSale[index][0], price);
          },
        );
      },
    );
  }
}
