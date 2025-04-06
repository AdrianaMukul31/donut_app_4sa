import 'package:flutter/material.dart';

class PizzaTile extends StatelessWidget {
  final String pizzaFlavor;
  final String pizzaPrice;
  final String pizzaStore;
  final dynamic pizzaColor;
  final String imageName;
  final VoidCallback onAdd;

  const PizzaTile({
    super.key,
    required this.pizzaFlavor,
    required this.pizzaPrice,
    required this.pizzaStore,
    required this.pizzaColor,
    required this.imageName,
    required this.onAdd, // ✅ ahora sí está bien
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            // Precio
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pizzaColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$pizzaPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: pizzaColor[800],
                    ),
                  ),
                ),
              ],
            ),

            // Imagen
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(
                imageName,
                height: 150,
              ),
            ),

            // Nombre y tienda
            Text(
              pizzaFlavor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: pizzaColor[800],
              ),
            ),
            Text(
              pizzaStore,
              style: TextStyle(fontSize: 13, color: Colors.grey[800]),
            ),

            // Iconos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.favorite_border, color: Colors.pink),
                  
                  GestureDetector(
                    onTap: onAdd, // ✅ aquí usas el callback
                    child: Icon(Icons.add, color: Colors.grey[600]),
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
