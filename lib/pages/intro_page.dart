import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_shop2/pages/home_page.dart';

class Intro_Page extends StatelessWidget {
  const Intro_Page({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.only(top: 120, right: 10, left: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Center(
                  child: Image.asset(
                    'images/nike-logo-png-38.png',
                    height: 200,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'JUST DO IT',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'brand new sneaker and custom kicks made with a premium quality ',
                style: TextStyle(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 100,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Home_Page()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      'SHOP NOW',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
