import 'package:flutter/material.dart';
import 'package:you_app/constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  final selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: ((context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: nDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categories[index],
                      style: TextStyle(
                        color: index == selectedCategoryIndex
                            ? nTextColor
                            : nTextLightColor,
                      ),
                    ),
                    Container(
                      height: 2,
                      width: 30,
                      color: index == selectedCategoryIndex
                          ? nTextColor
                          : Colors.transparent,
                    )
                  ],
                ),
              ))),
    );
  }
}
