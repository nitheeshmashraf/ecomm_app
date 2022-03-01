import 'package:flutter/material.dart';
import 'package:you_app/components/atcandbuynow.dart';
import 'package:you_app/components/counterandwishlist.dart';
import 'package:you_app/components/description.dart';
import 'package:you_app/components/pdpimageandtitle.dart';
import 'package:you_app/components/variants.dart';
import 'package:you_app/constants.dart';
import 'package:you_app/models/products.dart';
import 'package:you_app/pages/screens/search_screen.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchScreen()));
            },
            icon: const Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: nDefaultPadding),
        ]);
  }
}

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: size.height,
          child: Stack(children: [
            Container(
              margin: EdgeInsets.only(top: size.height * 0.3),
              padding: EdgeInsets.only(
                  top: size.height * 0.12,
                  left: nDefaultPadding,
                  right: nDefaultPadding),
              height: 500,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24))),
              child: Column(
                children: [
                  Variants(product: product),
                  const SizedBox(
                    height: nDefaultPadding / 2,
                  ),
                  Description(product: product),
                  const SizedBox(
                    height: nDefaultPadding / 2,
                  ),
                  const CounterandWishlist(),
                  const SizedBox(
                    height: nDefaultPadding / 2,
                  ),
                  ATCandBuyNow(product: product)
                ],
              ),
            ),
            PDPImageandtitle(product: product)
          ]),
        )
      ]),
    );
  }
}
