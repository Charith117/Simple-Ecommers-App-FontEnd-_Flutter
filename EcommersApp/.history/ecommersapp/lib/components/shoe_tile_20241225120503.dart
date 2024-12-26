import 'package:ecommersapp/models/shoe.dart';
import 'package:flutter/material.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;

   ShoeTile({super.key,
  
  required this.shoe,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),


      child:Column(
        children:[
          // shoe pics
          Image




          //description



          // price and deatils


          //button to add to the cart
        ],

      ),
    );
  }
}
