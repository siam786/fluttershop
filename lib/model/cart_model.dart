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

  get shopItems => _shopItems;
}
