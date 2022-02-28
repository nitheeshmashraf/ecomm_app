import 'package:flutter/material.dart';
import 'package:you_app/components/categories_list.dart';
import 'package:you_app/components/product_item_list.dart';

import 'package:you_app/constants.dart';
import 'package:you_app/models/products.dart';
import 'package:you_app/pages/screens/details_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: nTextColor,
            )),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_rounded,
              color: nTextColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: nTextColor,
            ),
          ),
          const SizedBox(width: nDefaultPadding),
        ]);
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: nDefaultPadding),
          child: Text("Women",
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold)),
        ),
        const SizedBox(
          height: nDefaultPadding / 2,
        ),
        const Categories(),
        const SizedBox(
          height: nDefaultPadding,
        ),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: nDefaultPadding),
          child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: nDefaultPadding,
                  crossAxisSpacing: nDefaultPadding),
              itemBuilder: (context, index) => ProductItems(
                  product: products[index],
                  onPress: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      product: products[index],
                                    )))
                      })),
        ))
      ],
    );
  }
}
