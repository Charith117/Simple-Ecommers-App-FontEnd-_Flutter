import 'package:ecommersapp/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {


    // this selecte
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) =>navigationBottomBar(index),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}