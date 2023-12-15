import 'package:flutter/material.dart';
import 'package:login20233/services/auth_services.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Recupera la instancia más cercana de autenticación. El widget no se reconstruye cuando hay cambios.
    final authService = Provider.of<AuthService>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('IQ-Switch'),
        leading: IconButton(
          icon: const Icon(Icons.login_outlined),
          //Cuando el botón es pulsado, llamará la función "logout" del servicio de autenticación, e irá a la página "login" con Navigator.pushReplacementNamed
          onPressed: () {
            authService.logout();
            //Reemplazará la ruta actual con la página 'login'
            //Ayuda al Navigator a determinar el estado actual de la pantalla para mover la navegación
            Navigator.pushReplacementNamed(context, 'login');
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: const Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
          style: TextStyle(fontSize: 20, color: Colors.white),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
