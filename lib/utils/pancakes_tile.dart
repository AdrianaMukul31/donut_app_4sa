import 'package:flutter/material.dart';

class PancakesTile extends StatelessWidget {
  final String pancakesFlavor;
  final String pancakesPrice;
  final String pancakesStore;
  final dynamic pancakesColor;
  final String imageName;
  final VoidCallback onAdd; // ✅ Nuevo parámetro

  const PancakesTile({
    super.key,
    required this.pancakesFlavor,
    required this.pancakesPrice,
    required this.pancakesStore,
    required this.pancakesColor,
    required this.imageName,
    required this.onAdd, // ✅ Nuevo parámetro en el constructor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        decoration: BoxDecoration(
          color: pancakesColor[50],
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pancakesColor[100],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$pancakesPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: pancakesColor[800],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Image.asset(
                imageName,
                height: 150,
              ),
            ),
            Text(
              pancakesFlavor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: pancakesColor[800],
              ),
            ),
            Text(
              pancakesStore,
              style: TextStyle(fontSize: 13, color: Colors.grey[800]),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.favorite_border, color: Colors.pink),
                  GestureDetector(
                    onTap: onAdd, // ✅ Aquí ejecuta la función al tocar el "+"
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
