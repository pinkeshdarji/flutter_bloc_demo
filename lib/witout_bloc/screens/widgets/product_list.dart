import 'package:flutter/material.dart';

import '../../models/cart.dart';
import 'product_tile.dart';

class ProductList extends StatelessWidget {
  final Cart cart;
  final VoidCallback refresh;

  ProductList({this.cart, this.refresh});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return GridView.builder(
        itemCount: 100,
        itemBuilder: (context, index) => ProductTile(
          itemNo: index,
          cart: cart,
          refresh: this.refresh,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: constraints.maxWidth > 700 ? 4 : 1,
          childAspectRatio: 5,
        ),
      );
    });
  }
}
