import 'package:flutter/material.dart';
import 'package:login20233/screens/login_screen.dart';
import 'package:login20233/screens/registro_screen.dart';

void main() {
  runApp(const MyApp());
}

class AppState extends StatelessWidget {
  const AppState({super.key});

//Build app
  @override
  Widget build(BuildContext context) {
    return MyApp();
    /*return MaterialApp(
      home: MyApp(),
    );*/
  }
}

//App structure (?)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      initialRoute: 'login',
      routes: {
        //(_) -> Contexto de datos
        'login': (_) => LoginScreen(),
        'registro': (_) => RegistroScreen()
      },
    );
  }
}
