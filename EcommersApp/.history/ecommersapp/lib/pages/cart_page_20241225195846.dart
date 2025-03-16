import 'package:ecommersapp/components/cart_item.dart';
import 'package:ecommersapp/models/cart.dart';
import 'package:ecommersapp/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<Shoe> selectedItems = [];
  bool showCheckboxes = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => GestureDetector(
        onTap: () {
          setState(() {
            showCheckboxes = false;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // heading
              Text(
                "My Cart",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Expanded(
                child: value.getUserCart().isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shopping_cart_outlined,
                              size: 100,
                              color: Colors.grey,
                            ),
                            SizedBox(height: 20),
                            Text(
                              "Your cart is empty",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    : ListView.builder(
                        itemCount: value.getUserCart().length,
                        itemBuilder: (context, index) {
                          // get individual shoe
                          Shoe individualShoe = value.getUserCart()[index];

                          //return the item with a checkbox
                          return GestureDetector(
                            onLongPress: () {
                              setState(() {
                                showCheckboxes = true;
                              });
                            },
                            child: Row(
                              children: [
                                if (showCheckboxes)
                                  Checkbox(
                                    value: selectedItems.contains(individualShoe),
                                    onChanged: (bool? selected) {
                                      setState(() {
                                        if (selected == true) {
                                          selectedItems.add(individualShoe);
                                        } else {
                                          selectedItems.remove(individualShoe);
                                        }
                                      });
                                    },
                                  ),
                                Expanded(child: CartItem(shoe: individualShoe)),
                              ],
                            ),
                          );
                        },
                      ),
              ),

              if (selectedItems.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle pay button press for selected items
                      // For example, you can navigate to a payment page with the selected items
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50), // Full width button
                    ),
                    child: Text("Pay"),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
