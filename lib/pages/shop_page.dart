import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoes_shop2/componant/shoe_tile.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class Shop_Page extends StatefulWidget {
  const Shop_Page({super.key});

  @override
  State<Shop_Page> createState() => _Shop_PageState();
}

class _Shop_PageState extends State<Shop_Page> {
  void addshoetocard(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).additemtothecard(shoe);
    showDialog(
        context: context,
        builder: (context) => const AlertDialog(
              title: Text('Successfully Added!'),
              content: Text('Check Your Card'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: (BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12))),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'everyone flies, some fly longer than the others',
              style: TextStyle(fontSize: 19, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(8, 15, 8, 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'HOT PICKS 🔥',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'see all',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0XFF1972E4),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    Shoe shoe = value.getshowlist()[index];
                    return Shoe_Tile(
                      shoe: shoe,
                      onTap: () {
                        addshoetocard(shoe);
                        print('hhh');
                      },
                    );
                  })),
        ],
      ),
    );
  }
}
