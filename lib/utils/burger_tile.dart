import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  final String burgerFlavor;
  final String burgerPrice;
  final String burgerStore;
  final dynamic burgerColor;
  final String imageName;
  final VoidCallback onAdd; // Función para agregar al carrito

  const BurgerTile({
    super.key, 
    required this.burgerFlavor, 
    required this.burgerPrice,
    required this.burgerStore,
    required this.burgerColor, 
    required this.imageName,
    required this.onAdd, // Se pasa la función onAdd
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: burgerColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: burgerColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$burgerPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: burgerColor[800],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(
                imageName,
                height: 150,
              ),
            ),
            Text(
              burgerFlavor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: burgerColor[800],
              ),
            ),
            Text(
              burgerStore,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.favorite_border, color: Colors.pink),
                  GestureDetector(
                    onTap: onAdd, // Llama a la función onAdd cuando se presiona el ícono
                    child: const Icon(
                      Icons.add,
                      color: Colors.grey,
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
