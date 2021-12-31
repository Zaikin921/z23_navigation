import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  var _screenLabel = '';
  final _labels = ['Home', 'Info', 'Settings'];

  @override
  Widget build(BuildContext context) {
    _screenLabel = _labels[_selectedIndex];
    return Scaffold(
      drawer: _buildDrawer(context),
      appBar: AppBar(
        title: const Text('Main Screen'),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Аккаунт'),
            style: TextButton.styleFrom
              (primary: Theme.of(context).colorScheme.onPrimary),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.print),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Text(_screenLabel, style: const TextStyle(fontSize: 38)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: _labels[0],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.info),
            label: _labels[1],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: _labels[2],
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }

  Drawer _buildDrawer(BuildContext context) => Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/flutter.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text('Navigation',
                style: TextStyle(fontSize: 22, color: Colors.white.withOpacity(0.5))
              )
            ),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Настройки'),
            onTap: () {
              Navigator.of(context).popAndPushNamed('/settings');
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('О программе'),
            onTap: () {
              Navigator.of(context).popAndPushNamed('/about');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Профиль'),
            onTap: () {
              Navigator.of(context).popAndPushNamed('/profile');
            },
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Выход'),
            onTap: () {
              SystemNavigator.pop();
            },
          ),
        ],
      ),
  );
}
