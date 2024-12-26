import 'package:ecommersapp/pages/cart_page.dart';
import 'package:ecommersapp/pages/shop_page.dart';
import 'package:flutter/material.dart';

import '../components/bottom_nav_bar.dart';

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

      appBar: AppBar(
        backgroundColor:Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: (){
                Scaffold.of(context).openDrawer(
                  // drawer
                  
                );
              },
            );
          }
        ),
      ),

      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child:Column(
          children:[
              //Logo
              DrawerHeader(
                // padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  'lib/images/nike.png',
                  color: Colors.white,
                ),
              ),


              Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "H O M E",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              
            ),
            
          ),
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(
              Icons.abo,
              color: Colors.white,
              ),
              title: Text(
              "C A R T",
              style: TextStyle(
                color: Colors.white,
              ),
              ),
            ),
            ),
          ],

          
        ),
      ),
      body: _pages[_selectedIndex],
      backgroundColor: Colors.grey[300],
    );
  }
}
