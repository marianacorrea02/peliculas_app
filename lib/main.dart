import 'package:flutter/material.dart';
import 'package:peliculas_app/screens/screens.dart';
// se pueden exportar paquetes para facilitar widgets
void main() {
  runApp(const MainApp());
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
