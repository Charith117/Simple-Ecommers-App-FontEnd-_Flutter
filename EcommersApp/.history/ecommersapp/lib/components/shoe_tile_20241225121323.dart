import 'package:ecommersapp/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;

  ShoeTile({
    super.key,
    required this.shoe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MAin,
        children: [
          // shoe pics
          Image.asset(shoe.imagePath),

          //description
          Text(shoe.description,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
          ),

          // price and deatils
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  // shoe name
                  Text(shoe.name),

                  ///price
                  Text(shoe.price),
              ],
              ),

              //Plus button
              Container(
                child: Icon(Icons.add),
              )
            ],
          ),

          //button to add to the cart
        ],
      ),
    );
  }
}
