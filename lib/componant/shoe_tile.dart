import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoes_shop2/models/shoe.dart';

class Shoe_Tile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  Shoe_Tile({super.key, required this.shoe, required onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 280,
      decoration: BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(shoe.imagepath),
          Padding(
            padding: const EdgeInsets.only(left: 6, right: 6),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.grey[750], fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(
                      shoe.name,
                      style: const TextStyle(
                          fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$ ' + shoe.price,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(18),
                    child: Icon(
                      Icons.add,
                      size: 40,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[800]),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
