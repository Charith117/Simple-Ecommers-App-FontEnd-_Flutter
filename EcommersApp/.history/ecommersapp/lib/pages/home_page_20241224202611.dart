import 'package:ecommersapp/components/bottom_nav_bar.dart';
import 'package:ecommersapp/pages/cart_page.dart';
import 'package:ecommersapp/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigationBottomBar(index),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
