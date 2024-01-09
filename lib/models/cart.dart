import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom Freak",
        price: '400',
        imagePath: 'lib/images/nike2.png',
        description: "These are lit"),
    Shoe(
        name: "Air Jordans",
        price: '300',
        imagePath: 'lib/images/nike1.png',
        description: "These are lit"),
    Shoe(
        name: "Air Max",
        price: '200',
        imagePath: 'lib/images/nike3.png',
        description: "These are lit"),
    Shoe(
        name: "Air Force",
        price: '100',
        imagePath: 'lib/images/nike4.png',
        description: "These are lit")
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeShop() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
