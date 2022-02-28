import 'package:flutter/material.dart';
import 'package:you_app/constants.dart';
import 'package:you_app/models/products.dart';

class ATCandBuyNow extends StatelessWidget {
  const ATCandBuyNow({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: nDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: nDefaultPadding),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: Icon(
              Icons.add_shopping_cart_sharp,
              color: product.color,
            ),
          ),
          Expanded(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: product.color,
                minimumSize: Size(150, 50),
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Buy now'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
