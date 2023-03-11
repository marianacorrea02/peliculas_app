import 'package:flutter/material.dart';
import 'package:peliculas_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas'),
        actions: [
          //agrega boton de buscar
          IconButton(onPressed: () {
            
          }, icon: Icon(Icons.search))
        ],
      ),
      body: Column(
        children: [
          CardSwiper()
        ],
      )
    );
  }
}