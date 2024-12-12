import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart'; // Import the package

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  BottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: GNav(
        color: const Color.fromARGB(255, 239, 249, 239),
        activeColor: Colors.green.shade100,
        tabActiveBorder: Border.all(
          color: Colors.white,
          width: 0,
        ),
        tabBackgroundColor: const Color.fromARGB(255, 118, 138, 115),
        tabBorderRadius: 10,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 13),
        onTabChange: (value) => onTabChange!(value),
        tabs: [
          GButton(
            icon: Icons.shopping_bag,
            text: 'Shop',
          ),
          GButton(
            icon: Icons.shopping_cart_checkout,
            text: 'Cart',
          ),
          GButton(
            icon: Icons.favorite_border_outlined,
            text: 'Save',
          )
        ],
      ),
    );
  }
}
