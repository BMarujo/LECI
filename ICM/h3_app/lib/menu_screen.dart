import 'package:flutter/material.dart';
import 'wallet.dart';
import 'package:provider/provider.dart';

class MenuItem {
  final String name;
  final String description;
  final double price;

  MenuItem({
    required this.name,
    required this.description,
    required this.price,
  });
}

class MenuScreen extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(
      name: 'Grilled Chicken Salad',
      description:
          'Fresh greens, grilled chicken, cherry tomatoes, and balsamic vinaigrette.',
      price: 12.99,
    ),
    MenuItem(
      name: 'Margherita Pizza',
      description: 'Classic pizza with tomato, mozzarella, and basil.',
      price: 14.99,
    ),
    MenuItem(
      name: 'Spaghetti Bolognese',
      description: 'Homemade spaghetti with rich Bolognese sauce.',
      price: 10.99,
    ),
    // Add more items as needed
  ];

  MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Wallet wallet = Provider.of<Wallet>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pratos Disponíveis'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return _buildMenuItemCard(context, wallet, menuItems[index]);
        },
      ),
    );
  }

  Widget _buildMenuItemCard(
      BuildContext context, Wallet wallet, MenuItem menuItem) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          ListTile(
            title: Text(menuItem.name),
            subtitle: Text(menuItem.description),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${menuItem.price.toStringAsFixed(2)}'),
                ElevatedButton(
                  onPressed: () {
                    _showCheckoutDialog(context, wallet, menuItem);
                  },
                  child: const Text('Comprar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showCheckoutDialog(
      BuildContext context, Wallet wallet, MenuItem menuItem) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmar Compra'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Prato: ${menuItem.name}'),
              Text('Preço: \$${menuItem.price.toStringAsFixed(2)}'),
              const Divider(),
              Text('Saldo atual: \$${wallet.balance.toStringAsFixed(2)}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                // Confirm purchase and deduct the amount from the wallet
                if (wallet.points >= 6) {
                  wallet.removePoints();
                  // Optionally, you can perform other actions here
                  // such as sending the order to the server
                  // or updating the cart state.
                  Navigator.pop(context); // Close the dialog
                  _showSuccessDialog2(context);
                } else {
                  if (menuItem.price > wallet.balance) {
                    Navigator.pop(context); // Close the dialog
                    _showUnsuccessDialog(context);
                  } else {
                    wallet.withdraw(menuItem.price);
                    wallet.addPoint();
                    // Optionally, you can perform other actions here
                    // such as sending the order to the server
                    // or updating the cart state.
                    Navigator.pop(context); // Close the dialog
                    _showSuccessDialog(context);
                  }
                }
              },
              child: const Text('Confirmar'),
            ),
          ],
        );
      },
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(' Sucesso!'),
          content: const Text('Obrigado pela sua compra!'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showSuccessDialog2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Sucesso!'),
          content: const Text('Você usou os seus pontos!'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showUnsuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Insucesso'),
          content: const Text(
              'Você não tem saldo suficiente para comprar este prato!'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
