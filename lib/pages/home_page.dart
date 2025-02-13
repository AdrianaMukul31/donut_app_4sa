import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //icono de la izquierda
        leading: Icon(
          Icons.menu,
          color: Colors.grey[800],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )
            ],
      ),
      body: Column(
        children:[
      //1.texto principal(Text)
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Text("I want to ",style: TextStyle(fontSize: 32),),
            Text("Eat",style: TextStyle(
              //tamano de letras
              fontSize: 32,
              //negritas
              fontWeight: FontWeight.bold,
              //subrayado
              decoration: TextDecoration.underline,
            ),
            ),
          ],
        ),
      )
      //2.pestanas(TabBar)
      //3.contenido de pestanas(TabBarView)
      //4.carrito(cart)
      ],
      ),
    );
  }
}