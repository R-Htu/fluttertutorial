import 'package:flutter/material.dart';
import 'package:tutorial_flutter/component/subeco/bottom_nav_bar.dart';
import 'package:tutorial_flutter/ecommerce/cart_page.dart';
import 'package:tutorial_flutter/ecommerce/save_page.dart';
import 'package:tutorial_flutter/ecommerce/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
    const SavePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 113, 138, 114),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              )),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 252, 248, 248),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                    child: Image.asset(
                  'lib/images/logo.jpg',
                  //color: Colors.green,
                )),
                // Divider(
                //color: Colors.green,
                //)
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: const Color.fromARGB(255, 13, 13, 13),
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 8, 8, 8),
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.info,
                      color: const Color.fromARGB(255, 10, 10, 10),
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 8, 8, 8),
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.card_membership,
                      color: const Color.fromARGB(255, 10, 10, 10),
                    ),
                    title: Text(
                      'Member',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 8, 8, 8),
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.reviews,
                      color: const Color.fromARGB(255, 10, 10, 10),
                    ),
                    title: Text(
                      'Review',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 8, 8, 8),
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 30),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: const Color.fromARGB(255, 10, 10, 10),
                ),
                title: Text(
                  'Logout',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 8, 8, 8),
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
