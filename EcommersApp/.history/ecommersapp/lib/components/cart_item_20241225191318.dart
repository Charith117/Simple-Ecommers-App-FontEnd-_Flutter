import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  const CartItem({
    super.key,
    required s});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
