import 'package:ecommersapp/components/shoe_tile.dart';
import 'package:ecommersapp/models/shoe.dart';
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
        Expanded(child: 
        ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {

          //create a shoe
          Shoe shoe = Shoe(
            name: 'Nike Air Max 90',
            price: '200',
            description: 'The Nike Air Max 90 stays true to its OG roots with its iconic Waffle outsole, stitched overlays and classic, color-accented TPU plates. Fresh colors give a modern look while Max Air cushioning adds comfort to your journey.',
            imagePath: 'lib/images/nike1.png',
          );
          return ShoeTile(
            shoe: shoe,
          );
            }
          ),
        ),
      ],
    );
  }
}
