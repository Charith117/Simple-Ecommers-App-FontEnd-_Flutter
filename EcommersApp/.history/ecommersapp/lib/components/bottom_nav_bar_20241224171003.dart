import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade900,
          tabActiveBorder: Border.all(color: Colors.grey),
          mainAxisAlignment: MainAxisAlignment.center,
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.shopping_cart,
              text: 'Cart',
            ),
          ],
        ),
      ),
    );
  }
}
