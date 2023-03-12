import 'package:flutter/material.dart';
import 'package:http/http.dart';

//extends paquete de flutter para uqe funcione el provider
class MoviesProvider extends ChangeNotifier{
  MoviesProvider(){
    print('inicializado');
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async{

    print('get');
  }
}