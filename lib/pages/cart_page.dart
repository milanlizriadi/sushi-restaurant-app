import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_restaurant_app/components/button.dart';
import 'package:sushi_restaurant_app/models/shop.dart';
import 'package:sushi_restaurant_app/pages/colors.dart';

import '../models/food.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // * remove from cart
  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();

    // * remove from cart
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text("Cart"),
          elevation: 0,
          centerTitle: true,
          backgroundColor: primaryColor,
        ),
        body: Column(
          children: [
            // !! CART
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  // * get food from cart
                  final Food food = value.cart[index];

                  // * get food name
                  final String foodName = food.name;

                  // * get food price
                  final String foodPrice = food.price;

                  // * return list title
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: ListTile(
                      // * Name
                      title: Text(
                        foodName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // * Price
                      subtitle: Text(
                        foodPrice,
                        style: TextStyle(
                          color: Colors.grey[800],
                        ),
                      ),

                      // * Delete Button
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.grey[800]),
                        onPressed: () => removeFromCart(food, context),
                      ),
                    ),
                  );
                },
              ),
            ),

            // !! PAY BUTTON
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyButton(
                text: "Pay Now",
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
