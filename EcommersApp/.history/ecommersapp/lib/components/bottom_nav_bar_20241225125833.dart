import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;

  const BottomNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GNav(
        color: Colors.grey[400],
        activeColor: Colors.grey.shade900,
        tabActiveBorder: Border.all(color: Colors.grey),
        mainAxisAlignment: MainAxisAlignment.center,
        gap: 8, // Adjust the gap between the icons and text
        padding: EdgeInsets.symmetric(horizontal: 20, v),

        onTabChange: onTabChange,

        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            iconSize: 20, // Adjust the icon size
            textStyle: TextStyle(fontSize: 12),
            backgroundColor: const Color.fromARGB(
                255, 255, 255, 255), // Adjust the text size
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
            iconSize: 20, // Adjust the icon size
            backgroundColor: const Color.fromARGB(
                255, 255, 255, 255), // Adjust the text size
            textStyle: TextStyle(fontSize: 12), // Adjust the text size
          ),
        ],
      ),
    );
  }
}