import 'package:flutter/material.dart';
import 'wallet.dart';
import 'package:provider/provider.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController money = TextEditingController();
    Wallet wallet = Provider.of<Wallet>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('A minha carteira'),
      ),
      body: Column(
        children: [
          Text(
            'Saldo: \$${wallet.balance.toStringAsFixed(2)}',
            style: const TextStyle(fontSize: 24),
          ),
          TextFormField(
            controller: money,
            decoration: const InputDecoration(
              labelStyle: TextStyle(
                color: Color.fromARGB(255, 240, 104, 104),
              ),
              labelText: 'Quantia a depositar',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 187, 231, 161),
                  width: 3,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 187, 231, 161),
                  width: 3,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              wallet.deposit(money.text.isEmpty ? 0 : double.parse(money.text));
            },
            child: const Text('Depositar Quantia'),
          ),
        ],
      ),
    );
  }
}
