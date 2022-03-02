import 'package:flutter/material.dart';

class SelectedCategory extends ChangeNotifier {
  int selectedCategory = 0;
  List<String> categories = ["Hand bags", "Jewellry", "Footwear", "Dresses"];
  selectCategory(id) {
    selectedCategory = id;
    notifyListeners();
  }
}
