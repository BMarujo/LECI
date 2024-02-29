import 'package:flutter/material.dart';
import 'wallet.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Wallet wallet = Provider.of<Wallet>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Center(
        child: Text('Pontos: ${wallet.points}'),
      ),
    );
  }
}
