import 'package:flutter/material.dart';
import 'wallet.dart';
import 'package:provider/provider.dart';
import 'user.dart';
import 'history.dart';

class HomeScreen extends StatelessWidget {
  final User user;

  const HomeScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    Wallet wallet = Provider.of<Wallet>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Olá, ${user.getname}!'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade200, Colors.blue.shade400],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Os teus Pontos: ${wallet.points}',
              style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 50),
            const Text(
              textAlign: TextAlign.center,
              'Junta 6 pontos para teres direito a uma refeição grátis!!!',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Route route = MaterialPageRoute(
                    builder: (context) => HistoryPage(user: user));
                Navigator.push(context, route);
              },
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.blue.shade800,
              ),
              child: const Text('Ver Histórico de Compras'),
            ),
          ],
        ),
      ),
    );
  }
}
