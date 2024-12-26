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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                padd
                children: [
                  // shoe name
                  Text(shoe.name),

                  ///price
                  Text(shoe.price),
              ],
              ),

              //Plus button
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                ),
              ),
              child: Icon(Icons.add,color: Colors.white),
              ),
            ],
          ),

          //button to add to the cart
        ],
      ),
    );
  }
}
