// // Copyright 2020 The Flutter Authors. All rights reserved.
// // Use of this source code is governed by a BSD-style license that can be
// // found in the LICENSE file.
//
// import 'package:flutter/material.dart';
//
//
// import '../witout_bloc.models/cart.dart';
//
// class CartPage extends StatefulWidget {
//   static String routeName = '/cart_page';
//
//   @override
//   _CartPageState createState() => _CartPageState();
// }
//
// class _CartPageState extends State<CartPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
//       ),
//       body: ListView.builder(
//         itemCount: value.items.length,
//         padding: const EdgeInsets.symmetric(vertical: 16),
//         itemBuilder: (context, index) => Dismissible(
//           key: Key('${value.items[index]}'),
//           onDismissed: (direction) {
//             Provider.of<Cart>(context, listen: false)
//                 .remove(value.items[index]);
//             Scaffold.of(context).showSnackBar(
//               SnackBar(
//                 content: Text('Removed from cart.'),
//                 duration: Duration(seconds: 1),
//               ),
//             );
//           },
//           child: CartItemTile(value.items[index]),
//           background: Container(color: Colors.red),
//         ),
//         //CartItemTile(value.items[index]),
//       ),
//     );
//   }
// }
//
// class CartItemTile extends StatelessWidget {
//   final int itemNo;
//
//   const CartItemTile(
//     this.itemNo,
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ListTile(
//         leading: Container(
//           width: 50,
//           height: 30,
//           child: Placeholder(
//             color: Colors.primaries[itemNo % Colors.primaries.length],
//           ),
//         ),
//         title: Text(
//           'Product $itemNo',
//           key: Key('cart_text_$itemNo'),
//         ),
//         trailing: IconButton(
//           key: Key('remove_icon_$itemNo'),
//           icon: Icon(Icons.close),
//           onPressed: () {
//             Provider.of<Cart>(context, listen: false).remove(itemNo);
//             Scaffold.of(context).showSnackBar(
//               SnackBar(
//                 content: Text('Removed from cart.'),
//                 duration: Duration(seconds: 1),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
