import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:you_app/constants.dart';
import 'package:you_app/models/category.dart';
import 'package:you_app/models/products.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    final categoryProvider = Provider.of<SelectedCategory>(context);
    final productListProvider = Provider.of<SelectedProductModel>(context);
    return SizedBox(
      height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryProvider.categories.length,
          itemBuilder: ((context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: nDefaultPadding),
                child: GestureDetector(
                  onTap: () => {
                    categoryProvider.selectCategory(index),
                    productListProvider.selectProductList(index)
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categoryProvider.categories[index],
                        style: TextStyle(
                          color: index == categoryProvider.selectedCategory
                              ? nTextColor
                              : nTextLightColor,
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 30,
                        color: index == categoryProvider.selectedCategory
                            ? nTextColor
                            : Colors.transparent,
                      )
                    ],
                  ),
                ),
              ))),
    );
  }
}
