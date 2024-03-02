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
        title: const Text('A Minha Carteira'),
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
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Saldo: \$${wallet.balance.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 40, color: Colors.white),
              ),
              const SizedBox(height: 50),
              TextFormField(
                controller: money,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  labelStyle: TextStyle(
                    color: Color.fromARGB(179, 26, 25, 25),
                  ),
                  labelText: 'Quantia a depositar',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 3,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  wallet.deposit(
                      money.text.isEmpty ? 0 : double.parse(money.text));
                },
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.blue
                      .shade800, // Set button color to a darker shade of blue
                ),
                child: const Text('Depositar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
