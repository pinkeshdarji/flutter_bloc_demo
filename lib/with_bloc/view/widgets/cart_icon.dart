// import 'package:flutter/material.dart';
//
// import '../cart_page.dart';
// import 'cart_counter.dart';
//
// class CartIcon extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(right: 16),
//           child: TextButton.icon(
//             style: TextButton.styleFrom(primary: Colors.white),
//             onPressed: () {
//               Navigator.pushNamed(context, CartPage.routeName);
//             },
//             icon: Icon(Icons.shopping_cart),
//             label: Text(''),
//             key: Key('cart'),
//           ),
//         ),
//         Positioned(
//           left: 30,
//           child: CartCounter(),
//         )
//       ],
//     );
//   }
// }
