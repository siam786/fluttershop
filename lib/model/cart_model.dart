import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    // itemName,itemPrice,imagePath,color
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Banana", "2.00", "lib/images/banana.png", Colors.yellow],
    ["Chicken", "3.00", "lib/images/chicken.png", Colors.red],
    ["Water", "5.00", "lib/images/water.png", Colors.orange]
  ];
  // list of cart items
  List _cartItems = [];
  get cartItems => _cartItems;
  get shopItems => _shopItems;
  // add item to cart
  void addItems(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total priceho
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
