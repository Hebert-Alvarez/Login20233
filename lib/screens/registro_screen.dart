import 'package:flutter/material.dart';

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Registro'),
      ),
      backgroundColor: Colors.grey[400],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            const Column(
              children: [
                SizedBox(height: 10),
                Text(
                  'Ingrese sus credenciales', // Agregar el título aquí
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87, // Cambia el color del texto a blanco
                  ),
                ),
              ],
            ),
            const SizedBox(height: 2),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Correo Electrónico',
                labelStyle: TextStyle(
                    color: Colors
                        .black87), // Cambia el color del texto del campo de entrada
                hintStyle: TextStyle(
                    color: Colors
                        .black87), // Cambia el color del texto de sugerencia
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors
                          .black87), // Cambia el color de la línea cuando el campo está enfocado
                ),
              ),
              style: TextStyle(
                  color: Colors
                      .black87), // Cambia el color del texto del campo de entrada
            ),
            const SizedBox(
              height: 4,
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Contraseña',
                labelStyle: TextStyle(
                    color: Colors
                        .black87), // Cambia el color del texto del campo de entrada
                hintStyle: TextStyle(
                    color: Colors
                        .black87), // Cambia el color del texto de sugerencia
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors
                          .black87), // Cambia el color de la línea cuando el campo está enfocado
                ),
              ),
              obscureText: true,
              style: TextStyle(
                  color: Colors
                      .black87), // Cambia el color del texto del campo de entrada
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: Colors.deepOrange, // Cambia el color del botón
              ),
              icon: const Icon(Icons.lock_open, size: 32),
              label: const Text(
                'Registrar',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors
                        .black87), // Cambia el color del texto del botón a blanco
              ),
              //Registro
              onPressed: null,
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
