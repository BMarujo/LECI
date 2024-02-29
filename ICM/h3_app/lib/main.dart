import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'wallet.dart';
import 'package:provider/provider.dart';
import 'menu_screen.dart';
import 'home_screen.dart';
import 'wallet_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: const LoginPage(),
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/home':
            User user = settings.arguments as User;
            return MaterialPageRoute(
                builder: (context) => HomePage(user: user));
          case '/login':
            return MaterialPageRoute(
              builder: (context) => const LoginPage(),
            );
        }
        return null;
      },
    ),
  );
}

class User {
  final String? name;

  User({this.name});
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 73, 110, 211),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 60, vertical: 100),
              child: Text.rich(
                textAlign: TextAlign.left,
                TextSpan(
                  text: 'Olá, como se chama?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
              child: TextFormField(
                controller: name,
                decoration: const InputDecoration(
                  labelStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  labelText: 'Nome',
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
            ),
            ElevatedButton(
              onPressed: () {
                if (name.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Introduza o seu nome'),
                    ),
                  );
                } else {
                  User user = User(name: name.text);
                  Navigator.pushNamed(context, '/home', arguments: user);
                }
              },
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final User user;

  HomePage({super.key, required this.user});

  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 1);

  List<Widget> _buildScreens() {
    return [MenuScreen(), const MainScreen(), const WalletScreen()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.menu),
        title: ("Menu"),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: ("Home"),
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.account_balance_wallet),
        title: ("Carteira"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Wallet(),
        child: PersistentTabView(
          context,
          controller: _controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset:
              true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows:
              true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: const ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarStyle: NavBarStyle
              .style1, // Choose the nav bar style with this property.
        ));
  }
}
