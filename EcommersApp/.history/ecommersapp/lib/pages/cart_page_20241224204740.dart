import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}


class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color: Colors.grey[300],
        child: Center(
          child: Text("Ch Page",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
    );
  }
}