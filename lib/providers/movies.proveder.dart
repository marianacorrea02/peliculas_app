import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//extends paquete de flutter para uqe funcione el provider
class MoviesProvider extends ChangeNotifier{

//de la bd 
  String _apikey ='8d39d0f3f09b5d560b7c4f4511815d73';
  String _baseUrl ='api.themoviedb.org';
  String _language ='en-US';
  MoviesProvider(){
    print('inicializado');
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async{
    //la url por parte
    var url = Uri.https(this._baseUrl, '3/movie/now_playing', {
      'api_key':_apikey,
      'language':_language,
      //porque se necesita la pg 1
      'page':'1',
    });

  // Await the http get response, then decode the json-formatted response.
  final response = await http.get(url);
  //agrgar un map

  final Map<String, dynamic> decodedData = json.decode(response.body) ;
  print(decodedData['results']);
  }
}