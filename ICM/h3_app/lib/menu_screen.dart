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

  @override
  Widget build(BuildContext context) {
    Wallet wallet = Provider.of<Wallet>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Menu'),
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
      margin: EdgeInsets.all(10.0),
      child: Column(
        children: [
          ListTile(
            title: Text(menuItem.name),
            subtitle: Text(menuItem.description),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('\$${menuItem.price.toStringAsFixed(2)}'),
                ElevatedButton(
                  onPressed: () {
                    _showCheckoutDialog(context, wallet, menuItem);
                  },
                  child: Text('Add to Cart'),
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
          title: Text('Confirm Purchase'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Item: ${menuItem.name}'),
              Text('Price: \$${menuItem.price.toStringAsFixed(2)}'),
              Divider(),
              Text('Current Balance: \$${wallet.balance.toStringAsFixed(2)}'),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Confirm purchase and deduct the amount from the wallet
                if (wallet.points >= 10) {
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
              child: Text('Confirm'),
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
          title: Text('Purchase Successful'),
          content: Text('Thank you for your purchase!'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('OK'),
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
          title: Text('Purchase Successful'),
          content: Text('Points used!'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('OK'),
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
          title: Text('Insufficient Funds'),
          content: Text('You do not have enough money in your wallet.'),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
