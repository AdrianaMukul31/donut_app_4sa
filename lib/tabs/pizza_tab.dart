import 'package:donut_app_4sa/utils/pizza_tile.dart';
import 'package:flutter/material.dart';

class PizzaTab extends StatelessWidget {
  final Function(String flavor, int price) onPizzaAdded;

  PizzaTab({super.key, required this.onPizzaAdded}); // <--- Esto es lo que faltaba

  final List pizzaOnSale = [
    ["Especial", "108", "Domino's", Colors.pink, "lib/images/especial_pizza.png"],
    ["Peperoni", "209", "Little Caesars", Colors.red, "lib/images/peperoni_pizza.png"],
    ["Cheese", "100", "Pizza Hut", Colors.amber, "lib/images/cheese_pizza.png"],
    ["Italiana", "95", "Italian Pizza", Colors.brown, "lib/images/italiana_pizza.png"],
    ["Aros", "90", "La casa de la pizza", Colors.brown, "lib/images/aros_pizza.png"],
    ["Veduras", "78", "Pizza Express", Colors.green, "lib/images/verduras_pizza.png"],
    ["Extra Queso", "106", "Siamo Pizza", Colors.amber, "lib/images/extraqueso_pizza.png"],
    ["Hawaiana", "120", "La toscana", Colors.brown, "lib/images/hawaiana-pizza.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: pizzaOnSale.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return PizzaTile(
          pizzaFlavor: pizzaOnSale[index][0],
          pizzaPrice: pizzaOnSale[index][1],
          pizzaStore: pizzaOnSale[index][2],
          pizzaColor: pizzaOnSale[index][3],
          imageName: pizzaOnSale[index][4],
          onAdd: () {
            onPizzaAdded(
              pizzaOnSale[index][0],
              int.parse(pizzaOnSale[index][1]),
            );
          },
        );
      },
    );
  }
}
