import 'package:flutter/material.dart';
import 'package:you_app/constants.dart';
import 'package:you_app/models/products.dart';

class PDPImageandtitle extends StatelessWidget {
  const PDPImageandtitle({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: nDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: nDefaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(children: [
                const TextSpan(text: "price"),
                TextSpan(
                    text: "\n\$" + product.price.toString(),
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold))
              ])),
              const SizedBox(
                width: nDefaultPadding,
              ),
              Expanded(
                  child: Hero(
                tag: product.id,
                child: Image.network(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
