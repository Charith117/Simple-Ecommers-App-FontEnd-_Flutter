import 'package:ecommerceapp/components/bottom_nav_bar.dart';
import 'package:ecommerceapp/pages/cart_page.dart';
import 'package:ecommerceapp/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  // this selected index to control the buttons
  int _selectedIndex = 0;

  // this method will update our selected index

  /// when the user taps on the bottom bar
  void navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // shop page
    const ShopPage(),

    // cart page
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      body: _pages[_selectedIndex],
      backgroundColor: Colors.grey[300],
    );
  }
}