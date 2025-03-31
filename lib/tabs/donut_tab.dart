import 'package:donut_app_4sa/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {

  //list of donuts
  final List donutsOnSale = [
  // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Ice Cream", "36","Krispy Kream", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45","Dunkin Donuts", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84","wonder", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95","Donuts", Colors.brown, "lib/images/chocolate_donut.png"]
    ];
  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //prepa1;como se va a organizar 
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //numero de columnas
        crossAxisCount: 2,
        childAspectRatio: 1/1.5), 
      //cuantos elementos
      itemCount: 4,
      padding: const EdgeInsets.all(12),
      //que elemento se construira
      itemBuilder:(context, index)  {
        return DonutTile(
          donutFlavor:donutsOnSale[index][0],
          donutPrice:donutsOnSale[index][1],
          donutStore: donutsOnSale[index][2],
          donutColor:donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      });
  }
}