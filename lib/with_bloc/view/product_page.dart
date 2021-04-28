import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductPage extends StatelessWidget {
  static String routeName = '/product';
  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        title: Text('Product details'),
      ),
      body: Center(
        child: Container(
          child: Text(
            '${product.name}',
            style: TextStyle(fontSize: 34),
          ),
        ),
      ),
    );
  }
}
