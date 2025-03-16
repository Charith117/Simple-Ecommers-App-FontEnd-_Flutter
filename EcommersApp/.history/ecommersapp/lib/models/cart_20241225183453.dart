import 'package:ecommersapp/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale

  final List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Max 270',
      price: '150',
      imagePath: 'lib/images/nike_air_max_270.png',
      description: 'Inspired by Air Max 180 and Air Max 93.'),
    Shoe(
      name: 'Air Force 1',
      price: '90',
      imagePath: 'lib/images/nike_air_force_1.png',
      description: 'A classic sneaker since 1982.'),
    Shoe(
      name: 'Air Zoom Pegasus 37',
      price: '120',
      imagePath: 'lib/images/nike_air_zoom_pegasus_37.png',
      description: 'Built for runners at every level.'),
    Shoe(
      name: 'Blazer Mid 77',
      price: '100',
      imagePath: 'lib/images/nike_blazer_mid_77.png',
      description: 'Retro look with a modern twist.'),
    Shoe(
      name: 'React Infinity Run Flyknit',
      price: '160',
      imagePath: 'lib/images/nike_react_infinity_run_flyknit.png',
      description: 'Designed to help reduce injury.'),
      

  //list of items in user cart

  final List<Shoe> userCart = [];

  //get list of items for sales
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get in the cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // adding item to the cart
  void addItemToTheCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();

  }

  //delete item from the cart
  void removeItemFormCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
}
