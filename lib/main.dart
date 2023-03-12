import 'package:flutter/material.dart';
import 'package:peliculas_app/providers/movies.proveder.dart';
import 'package:peliculas_app/screens/screens.dart';
import 'package:provider/provider.dart';
// se pueden exportar paquetes para facilitar widgets
void main() {
  // para llamar al provider
  AppState();

  
}

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MoviesProvider(),)
      ],
      // llame la app
      child: MainApp(),);
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home': ( _ ) => HomeScreen(),
        'details':( _ ) => DetailsScreen(),
      },
      // cinfigurar temas
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          color: Colors.green,
        )
      )
    );
  }
}
