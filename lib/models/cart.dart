import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Hand Made',
        price: '236 ',
        imagePath: 'lib/images/green3.jpg',
        description:
            'Light Green Suede Flat Shoes Comfortable Splicing Pointed Toe'),
    Shoe(
        name: 'Hand Made',
        price: '236 ',
        imagePath: 'lib/images/green3.jpg',
        description:
            'Light Green Suede Flat Shoes Comfortable Splicing Pointed Toe'),
    Shoe(
        name: 'Hand Made',
        price: '236 ',
        imagePath: 'lib/images/green3.jpg',
        description:
            'Light Green Suede Flat Shoes Comfortable Splicing Pointed Toe'),
    Shoe(
        name: 'Hand Made',
        price: '236 ',
        imagePath: 'lib/images/green3.jpg',
        description:
            'Light Green Suede Flat Shoes Comfortable Splicing Pointed Toe'),
  ];
  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
