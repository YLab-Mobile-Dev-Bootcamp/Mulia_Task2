import 'package:flutter/foundation.dart';

class Menu extends ChangeNotifier {
  final String name, image;
  final int price;

  Menu({required this.name, required this.price, required this.image});
}

List<Menu> menuList = [
  Menu(
      name: 'Spaghetti Carbonara',
      price: 35000,
      image: 'images/spageti_carbonara.jpg'),
  Menu(name: 'Pizza', price: 87000, image: 'images/pizza.jpg'),
  Menu(name: 'Paket Hemat', price: 93000, image: 'images/paketlengkap.jpg'),
  Menu(name: 'French Fries', price: 10000, image: 'images/frenchfries.jpg'),
  Menu(name: 'Salad', price: 17000, image: 'images/salad.png'),
  Menu(name: 'Steak', price: 50000, image: 'images/steak.png'),
];
