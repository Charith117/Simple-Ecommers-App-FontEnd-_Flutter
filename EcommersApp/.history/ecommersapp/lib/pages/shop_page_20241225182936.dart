import 'package:ecommersapp/components/shoe_tile.dart';
import 'package:ecommersapp/models/cart.dart';
import 'package:ecommersapp/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return  Consumer<Cart>(builder: (context))
  }
}
