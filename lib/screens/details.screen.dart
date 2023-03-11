import 'package:flutter/material.dart';


//stlessw
class DetailsScreen extends StatelessWidget {
 
 //cambiar por instancia de movie
  @override
  Widget build(BuildContext context) {
    //recibir argumentos si es nullo manda no-movie
    final String movie = ModalRoute.of(context)?.settings.arguments.toString()??'no-movie';
    return Scaffold(
      body: Container(
      child: Center(
        child: Text('$movie')
      ),
    )
    );
  }
}