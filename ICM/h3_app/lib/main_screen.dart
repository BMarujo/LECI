import 'package:flutter/material.dart';
import 'wallet.dart';
import 'package:provider/provider.dart';
import 'user.dart';

class MainScreen extends StatelessWidget {
  final User user;

  const MainScreen({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Wallet wallet = Provider.of<Wallet>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Olá, ${user.getname}!'),
        backgroundColor:
            Colors.blue, // Set the app bar background color to blue
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade200, Colors.blue.shade400],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Os teus Pontos: ${wallet.points}',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(height: 30),
              const Text(
                'Junta 6 pontos para teres direito a uma refeição grátis!!!',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Add the functionality to open purchase history
                  // You can navigate to another screen or show a modal, for example.
                },
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.blue
                      .shade800, // Set button color to a darker shade of blue
                ),
                child: const Text('Ver Histórico de Compras'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
