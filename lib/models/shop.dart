import "package:flutter/material.dart";
import "food.dart";

class Shop extends ChangeNotifier {
  // Food Menu
  final List<Food> _foodMenu = [
    // Salmon Sushi
    Food(
      name: "Salmon Sushi",
      price: "10.000",
      imagePath: "lib/images/salmon.png",
      rating: "4.9",
    ),

    // Tobiko Sushi
    Food(
      name: "Tobiko Sushi",
      price: "7.500",
      imagePath: "lib/images/tobiko.png",
      rating: "4.9",
    ),

    // Tako Sushi
    Food(
      name: "Tako Sushi",
      price: "7.500",
      imagePath: "lib/images/tako.png",
      rating: "4.8",
    ),

    // Tamagoyaki Sushi
    Food(
      name: "Tamagoyaki Sushi",
      price: "4.000",
      imagePath: "lib/images/tamagoyaki.png",
      rating: "4.7",
    ),
  ];

  // ? Customer Cart
  List<Food> _cart = [];

  // ? Getter Information
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // ? Add To Cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // ? Remove From Cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
