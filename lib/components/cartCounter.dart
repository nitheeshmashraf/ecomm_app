import 'package:flutter/material.dart';
import 'package:you_app/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({
    Key? key,
  }) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int cartCount = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
            icon: Icons.remove,
            onPress: () {
              setState(() {
                if (cartCount > 1) --cartCount;
              });
            }),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: nDefaultPadding / 2),
          child: Text(
            cartCount.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlinedButton(
            icon: Icons.add,
            onPress: () {
              setState(() {
                cartCount++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlinedButton({icon, onPress}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlinedButton(
          child: Icon(icon),
          style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            primary: nTextColor,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(13))),
          ),
          onPressed: onPress,
        ));
  }
}
