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



  void addShoeToTheCart({required Shoe individualShoe}){
    Provider.of<Cart>(context,listen: false).addShoeToCart(individualShoe);
  }
  @override
  Widget build(BuildContext context) {
    return  Consumer<Cart>(
      builder: (context,value,child)=>Column(
      //serch bar
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 246, 246),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search bar'),
              Icon(Icons.search),
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text('everyone flies... some fly longer than others',
              style: TextStyle(
                color: Colors.grey[600],
                // fontSize: 20,
              )),
        ),

        //hot pics
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                ),
              ),
              Text(
                'See all..',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //create a shoe
                Shoe shoe = value.getShoeList()[index];
                return ShoeTile(
                  shoe: shoe,
                  onTap:() => addShoeToTheCart(individualShoe: shoe),
                );
              }),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
          child: Divider(
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ],
    ),
    );
  }
}