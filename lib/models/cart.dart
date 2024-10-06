import 'package:flutter/cupertino.dart';
import 'package:shoes_shop2/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shop_of_the_shoes = [
    Shoe(
        name: 'Air Jordan',
        price: '240',
        imagepath: 'images/first_shoes.jpeg',
        description: 'cool shoe'),
    Shoe(
        name: 'Zoom Freak',
        price: '230',
        imagepath: 'images/second_shoes.jpeg',
        description:
            'The forward thinking design of his latest signature shoe'),
    Shoe(
        name: 'KD Treys',
        price: '190',
        imagepath: 'images/third_shoes.jpeg',
        description:
            'The quality and the price and the low weight in the same shoe'),
    Shoe(
        name: 'Kyrie',
        price: '210',
        imagepath: 'images/fourth_shoes.jpeg',
        description: 'the shoe of every day '),
  ];

  List<Shoe> user_picked_choose = [];

  List<Shoe> getshowlist() {
    return shop_of_the_shoes;
  }

  List<Shoe> getusercard() {
    return user_picked_choose;
  }

  void additemtothecard(Shoe shoe) {
    user_picked_choose.add(shoe);
    notifyListeners();
  }

  void removeitemfromthecard(Shoe shoe) {
    user_picked_choose.remove(shoe);
    notifyListeners();
  }
}
