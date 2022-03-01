import 'package:flutter/material.dart';
import 'package:you_app/components/cart_counter.dart';
import 'package:you_app/constants.dart';

class CounterandWishlist extends StatefulWidget {
  const CounterandWishlist({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterandWishlist> createState() => _CounterandWishlistState();
}

class _CounterandWishlistState extends State<CounterandWishlist> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        GestureDetector(
          onTap: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
                color: isFavorite ? Colors.redAccent : nTextLightColor,
                shape: BoxShape.circle),
            child: const Icon(
              Icons.heart_broken_sharp,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
