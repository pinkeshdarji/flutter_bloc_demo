import 'package:flutter/material.dart';

import '../../models/cart.dart';
import '../../models/product.dart';
import '../product_page.dart';

class ProductTile extends StatelessWidget {
  final int itemNo;
  final Cart cart;
  final VoidCallback refresh;

  const ProductTile({this.itemNo, this.cart, this.refresh});

  @override
  Widget build(BuildContext context) {
    final Color color = Colors.primaries[itemNo % Colors.primaries.length];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(
            context,
            ProductPage.routeName,
            arguments: Product('Product $itemNo', color),
          );
        },
        leading: Container(
          width: 50,
          height: 30,
          child: Placeholder(
            color: color,
          ),
        ),
        title: Text(
          'Product $itemNo',
          key: Key('text_$itemNo'),
        ),
        trailing: IconButton(
          key: Key('icon_$itemNo'),
          icon: cart.items.contains(itemNo)
              ? Icon(Icons.shopping_cart)
              : Icon(Icons.shopping_cart_outlined),
          onPressed: () {
            !cart.items.contains(itemNo)
                ? cart.add(itemNo)
                : cart.remove(itemNo);
            debugPrint('cart item count ${cart.items.length}');
            refresh();
            Scaffold.of(context).showSnackBar(
              SnackBar(
                content: Text(cart.items.contains(itemNo)
                    ? 'Added to cart.'
                    : 'Removed from cart.'),
                duration: Duration(seconds: 1),
              ),
            );
          },
        ),
      ),
    );
  }
}
