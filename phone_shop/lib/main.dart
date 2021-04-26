import 'package:flutter/material.dart';
import 'package:phone_shop/Pages/Home.dart';
import 'package:phone_shop/Pages/ProductPage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {'/': (context) => Home(), '/product': (context) => ProductPage()},
  ));
}
