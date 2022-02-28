import 'package:flutter/material.dart';
import 'package:you_app/constants.dart';
import 'package:you_app/models/products.dart';

class Variants extends StatelessWidget {
  const Variants({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Color",
                style: TextStyle(color: nTextLightColor),
              ),
              Row(
                children: [
                  VariantColorDot(
                    isSelected: true,
                    color: product.color,
                  ),
                  const VariantColorDot(color: Colors.redAccent),
                  const VariantColorDot(color: Colors.amber),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(
                  style: const TextStyle(color: nTextLightColor),
                  children: [
                const TextSpan(text: "Size\n"),
                TextSpan(
                    text: "${product.size} cm",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        ?.copyWith(fontWeight: FontWeight.bold)),
              ])),
        )
      ],
    );
  }
}

class VariantColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const VariantColorDot(
      {Key? key, required this.color, this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        width: 24,
        margin: const EdgeInsets.only(
            top: nDefaultPadding / 4, right: nDefaultPadding / 2),
        padding: const EdgeInsets.all(2.5),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: isSelected ? color : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ));
  }
}
