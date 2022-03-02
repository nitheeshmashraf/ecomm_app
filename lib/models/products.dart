import 'package:flutter/material.dart';
import 'package:you_app/components/description.dart';
import 'package:provider/provider.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  String get getImage => image;
  String get getTitle => title;
  String get getDescription => description;
  int get getPrice => price;
  int get getSize => size;
  int get getId => id;
  Color get getColor => color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

class SelectedProductModel extends ChangeNotifier {
  late Product selectedProduct;
  List<Product> products = [
    Product(
        id: 1,
        title: "Office Code",
        price: 234,
        size: 12,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
        image:
            "https://raw.githubusercontent.com/abuanwar072/E-commerce-App-UI-Flutter/master/assets/images/bag_1.png",
        color: const Color(0xFF3D82AE)),
    Product(
        id: 2,
        title: "Belt Bag",
        price: 234,
        size: 8,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
        image:
            "https://raw.githubusercontent.com/abuanwar072/E-commerce-App-UI-Flutter/master/assets/images/bag_2.png",
        color: const Color(0xFFD3A984)),
    Product(
        id: 3,
        title: "Hang Top",
        price: 234,
        size: 10,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
        image:
            "https://raw.githubusercontent.com/abuanwar072/E-commerce-App-UI-Flutter/master/assets/images/bag_3.png",
        color: const Color(0xFF989493)),
    Product(
        id: 4,
        title: "Old Fashion",
        price: 234,
        size: 11,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
        image:
            "https://raw.githubusercontent.com/abuanwar072/E-commerce-App-UI-Flutter/master/assets/images/bag_4.png",
        color: const Color(0xFFE6B398)),
    Product(
        id: 5,
        title: "Office Code",
        price: 234,
        size: 12,
        description:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
        image:
            "https://raw.githubusercontent.com/abuanwar072/E-commerce-App-UI-Flutter/master/assets/images/bag_5.png",
        color: const Color(0xFFFB7883)),
    Product(
      id: 6,
      title: "Office Code",
      price: 234,
      size: 12,
      description:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.",
      image:
          "https://raw.githubusercontent.com/abuanwar072/E-commerce-App-UI-Flutter/master/assets/images/bag_6.png",
      color: const Color(0xFFAEAEAE),
    ),
  ];

  selectProduct(id) {
    Product selectedProduct_ = products[id];
    selectedProduct = selectedProduct_;
    notifyListeners();
  }
}
