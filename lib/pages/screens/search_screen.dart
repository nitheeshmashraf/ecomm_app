import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:you_app/components/categories_list.dart';
import 'package:you_app/components/product_item_list.dart';

import 'package:you_app/constants.dart';
import 'package:you_app/models/category.dart';
import 'package:you_app/models/products.dart';
import 'package:you_app/pages/screens/details_screen.dart';
import 'package:provider/provider.dart';

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
    final selectProductProvider = Provider.of<SelectedProductModel>(context);
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
          child: selectProductProvider.selectedProductList.length == 0
              ? const Center(child: Text("no items"))
              : GridView.builder(
                  itemCount: selectProductProvider.selectedProductList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: nDefaultPadding,
                      crossAxisSpacing: nDefaultPadding),
                  itemBuilder: (context, index) => ProductItems(
                      product: selectProductProvider.selectedProductList[index],
                      onPress: () => {
                            selectProductProvider.selectProduct(index),
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const DetailScreen()))
                          })),
        ))
      ],
    );
  }
}
