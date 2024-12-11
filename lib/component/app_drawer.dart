import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 224, 246, 226),
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.music_note,
              size: 45,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('H O M E'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/homepage');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('S E T T I N G S'),
            onTap: () {
              Navigator.pushNamed(context, '/settingpage');
            },
          ),
          ListTile(
            leading: const Icon(Icons.face),
            title: const Text('P H O T O S'),
            onTap: () {
              Navigator.pushNamed(context, '/settingpage');
            },
          ),
          ListTile(
            leading: const Icon(Icons.folder),
            title: const Text('C O L L E C T I O N S'),
            onTap: () {
              Navigator.pushNamed(context, '/settingpage');
            },
          ),
        ],
      ),
    );
  }
}
