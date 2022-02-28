import 'package:flutter/material.dart';
import 'package:you_app/constants.dart';
import 'package:you_app/models/products.dart';

class ProductItems extends StatelessWidget {
  final Product product;
  final Function onPress;
  const ProductItems({
    Key? key,
    required this.product,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
          child: Container(
              padding: const EdgeInsets.all(nDefaultPadding),
              child: Hero(tag: product.id, child: Image.network(product.image)),
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: nDefaultPadding / 4),
          child: Text(product.title),
        ),
        Text(product.price.toString()),
      ]),
    );
  }
}
