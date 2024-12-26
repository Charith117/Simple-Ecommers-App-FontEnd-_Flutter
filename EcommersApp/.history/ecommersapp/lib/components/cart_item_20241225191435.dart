import 'package:ecommersapp/models/shoe.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;

  CartItem({
    super.key,
    required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading
    );
  }
}
