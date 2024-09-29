import 'package:ecommerce_app2/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: "Gucci Glasses",
      price: 300,
      description: "Gucci glasses offer a perfect mix of luxury and style.",
      imagePath: 'assets/glasses.png',
    ),
    // product 2
    Product(
      name: "Vetments hoodie",
      price: 99.99,
      description:
          "Cozy, stylish hoodie offering comfort, warmth, and a casual look.",
      imagePath: 'assets/hoodie.png',
    ),
    // product 3
    Product(
      name: "Rick Owens",
      price: 700,
      description:
          "Edgy, avant-garde Rick Owens shoe with bold design and premium craftsmanship.",
      imagePath: 'assets/shoe.png',
    ),
    // product 4
    Product(
      name: "Festina Watch",
      price: 221,
      description:
          "Elegant Festina watch combining precision, durability, and timeless style.",
      imagePath: 'assets/watch.png',
    ),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
