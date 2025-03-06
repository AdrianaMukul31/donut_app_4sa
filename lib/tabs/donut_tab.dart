import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  const DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //prepa1;como se va a organizar 
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //numero de columnas
        crossAxisCount: 2), 
      //cuantos elementos
      itemCount: 2,
      padding: const EdgeInsets.all(12),
      //que elemento se construira
      itemBuilder:(context, index)  {
        return;
      });
  }
}