import 'package:flutter/material.dart';
import 'package:you_app/constants.dart';
import 'package:you_app/models/products.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: nDefaultPadding),
      child: Text(product.description),
    );
  }
}
