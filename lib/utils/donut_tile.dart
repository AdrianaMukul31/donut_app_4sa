import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final String donutStore;
  //dinamic porque sera de tipo color
  final dynamic donutColor;
  final String imageName;


  const DonutTile({super.key, 
  required this. donutFlavor, 
  required this.donutPrice,
  required this.donutStore,
  required this.donutColor, 
  required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
       // color:donutColor[50],
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(24)
          //esquinas redondeadas
        ),
        child: Column(
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: donutColor[100],
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),
                      topRight: Radius.circular(24)),
                    ),
                    padding: const EdgeInsets.symmetric( vertical:8,
                     horizontal:18),
                     child: Text(
                      '\$$donutPrice',
                      //backslash o interpolacion de string(\)
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color:donutColor[800],
                      ) ,
                     ),
                  )
                ],
                ),
                //Donut flavor text
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    child: Image.asset(imageName),
                  ),
                   Text(donutFlavor,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color:donutColor[800],)),
                        Text(donutStore, style: TextStyle(fontSize: 13,color: Colors.grey[800]),
                        ),
                        //Icons 
                        Padding(
                          padding: const EdgeInsets. symmetric(horizontal: 4, vertical: 10),
                          child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                              Icon(Icons.favorite_border, color: Colors.pink,),
                                              Icon(Icons.add, color: Colors.grey[600],)
                                            ],),
                        )
                    ],
                    ),
        ),
      );
  }
}