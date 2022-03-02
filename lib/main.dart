import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:you_app/models/category.dart';
import 'package:you_app/models/products.dart';
import 'package:you_app/pages/screens/search_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => SelectedProductModel()),
      ChangeNotifierProvider(create: (_) => SelectedCategory()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecomm App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SearchScreen(),
    );
  }
}
