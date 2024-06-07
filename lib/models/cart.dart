import 'package:flutter/material.dart';
import 'package:sneakermarket/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Pegasus',
        price: '345',
        imagePath: 'assets/images/Pegasus.png',
        description: 'Brat meslehetlidi'),
    Shoe(
      name: 'Free Run',
      price: '600',
      imagePath: 'assets/images/Free_Run.png',
      description: 'bahadi brat',
    ),
    Shoe(
      name: 'Air Max',
      price: '1000',
      imagePath: 'assets/images/Air_Max.png',
      description: 'Profesionallar ucun shoe',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '240',
      imagePath: 'assets/images/Air_Jordan.png',
      description: 'Deymez senol',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
