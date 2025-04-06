import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  final int totalItems;
  final int totalPrice;

  const ShoppingCart({
    super.key,
    required this.totalItems,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$totalItems Items | \$$totalPrice',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 28),
                ),
                const Text('Delivery Charges Included')
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12)),
              child: const Text(
                'View Cart',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}