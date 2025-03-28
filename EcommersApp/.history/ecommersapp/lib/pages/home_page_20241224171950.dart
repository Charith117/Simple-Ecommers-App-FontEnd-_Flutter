import 'package:ecommersapp/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {


    // this selected index to control the buttons
    int _selectctedIndex = 0;

    // this methos will update our selected index

    /// when the user taps on the 
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) =>navigationBottomBar(index),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}