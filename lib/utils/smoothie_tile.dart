import 'package:flutter/material.dart';

class SmoothieTile extends StatelessWidget {
  final String smoothieFlavor;
  final String smoothiePrice;
  final String smoothieStore;
  // Dinámico porque será de tipo color
  final dynamic smoothieColor;
  final String imageName;
  final VoidCallback onAdd; // Función de callback para agregar al carrito

  const SmoothieTile({
    super.key,
    required this.smoothieFlavor,
    required this.smoothiePrice,
    required this.smoothieStore,
    required this.smoothieColor,
    required this.imageName,
    required this.onAdd, // Asegúrate de pasar esta función al crear el widget
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: smoothieColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$smoothiePrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: smoothieColor[800],
                    ),
                  ),
                ),
              ],
            ),
            // Imagen del smoothie
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(imageName),
            ),
            // Nombre del smoothie
            Text(
              smoothieFlavor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: smoothieColor[800],
              ),
            ),
            // Tienda de smoothies
            Text(
              smoothieStore,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
            // Íconos
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.favorite_border, color: Colors.pink),
                  GestureDetector(
                    onTap: onAdd, // Llamar a la función onAdd cuando se presiona el icono
                    child: const Icon(Icons.add, color: Colors.grey),
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
