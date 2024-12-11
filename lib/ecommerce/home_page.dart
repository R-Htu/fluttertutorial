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
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
