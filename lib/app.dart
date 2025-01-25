import 'package:flutter/material.dart';
import 'package:semana3/presentation/login/login_screen.dart';
import 'package:semana3/presentation/login/productos_screen.dart';

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/', // Ruta inicial es LoginScreen
      routes: {
        '/': (context) => LoginScreen(), // Ruta para LoginScreen
        '/productos': (context) => ProductsScreen(), // Ruta para ProductsScreen
      },
    );
  }
}

