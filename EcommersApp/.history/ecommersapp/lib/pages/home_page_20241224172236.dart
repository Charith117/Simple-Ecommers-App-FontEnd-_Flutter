import 'package:ecommersapp/components/bottom_nav_bar.dart';
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


    // this selected index to control the buttons
    int _selectctedIndex = 0;

    // this methos will update our selected index

    /// when the user taps on the bottom bar
    void navigationBottomBar(int index) {
      setState(() {
        _selectctedIndex = index;
      });
      
    }

    // pages to dispaly
    final List

    
    return Scaffold(
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) =>navigationBottomBar(index),
      ),
      backgroundColor: Colors.grey[300],
    );


  }
}