import 'package:donut_app_4sa/tabs/burger_tab.dart';
import 'package:donut_app_4sa/tabs/donut_tab.dart';
import 'package:donut_app_4sa/tabs/pancakes_tab.dart';
import 'package:donut_app_4sa/tabs/pizza_tab.dart';
import 'package:donut_app_4sa/tabs/smoothie_tab.dart';
import 'package:donut_app_4sa/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs=[
    MyTab(iconPath: 'lib/icons/donut.png',),
    MyTab(iconPath: 'lib/icons/burger.png',),
    MyTab(iconPath: 'lib/icons/smoothie.png',),
    MyTab(iconPath: 'lib/icons/pancakes.png',),
    MyTab(iconPath: 'lib/icons/pizza.png',)

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
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
              )),
            ],
          ),
        ),
        //2.pestanas(TabBar)
        TabBar(tabs: myTabs),
      
        //3.contenido de pestanas(TabBarView)
        Expanded(
          child: TabBarView(children: [
            DonutTab(),
            BurgerTab(),
            SmoothieTab(),
            PancakesTab(),
            PizzaTab()
          ]),
        )
        //4.carrito(cart)
        ],
        ),
      ),
    );
  }
}