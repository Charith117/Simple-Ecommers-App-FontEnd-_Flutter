import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}



class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      //serch bar
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 246, 246),
            borderRadius: BorderRadius.circular(50),
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search bar'),
              Icon(Icons.search),
            ],
          ),
        ),
      ],



      //message
      Text('')


      //hot pics
      
    );
  }

}