import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class GroceryItemTile extends StatelessWidget {
  final String ItemName;
  final String ItemPrice;
  final String ImagePath;
  final Color;
  void Function()? onPressed;

  GroceryItemTile(
      {super.key,
      required this.ItemName,
      required this.ItemPrice,
      required this.ImagePath,
      this.Color,
      required this.onPressed
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children:
                // image
                [
          Image.asset(
            ImagePath,
            height: 64,
          ),
          // item name
          Text(ItemName),

          // price+button
          MaterialButton(
            onPressed: onPressed,
            color: Color[800],
            child: Text(
              '\$' + ItemPrice,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          )
        ]),
      ),
    );
  }
}
