import 'package:flutter/material.dart';
import 'package:semana3/core/colors.dart';
import 'package:semana3/core/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Colors.blue, gradient: AppStyles.secondaryBgGradient),
        child: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: double.maxFinite),
                Text(
                  "Crear cuenta",
                  style: AppStyles.title,
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      color: AppColors.ligthBg,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Nombres",
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Apellidos",
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Correo",
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Clave",
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Repetir clave",
                              contentPadding: EdgeInsets.all(10),
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
                        ElevatedButton(
                          onPressed: () {
                            // Navegar a la pantalla de productos
                            Navigator.pushNamed(context, '/productos');
                          },
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: Ink(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(colors: [
                                  AppColors.mainBg,
                                  AppColors.contranstBg
                                ]),
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              width: 200,
                              height: 50,
                              alignment: Alignment.center,
                              child: const Text(
                                'CREAR CUENTA',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Ya tengo cuenta',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  decoration: TextDecoration.underline),
                            ))
                      ],
                    ))
              ],
            )),
      ),
    );
  }
}

