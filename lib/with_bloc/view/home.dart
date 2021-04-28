import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/with_bloc/bloc/cart_bloc.dart';
import 'package:flutter_bloc_demo/with_bloc/bloc/state/cart_state.dart';

import 'widgets/product_list.dart';

class HomePage extends StatefulWidget {
  static String routeName = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _crossAxisSpacing = 8, _mainAxisSpacing = 12, _aspectRatio = 5;

  int _crossAxisCount = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    var width = (screenWidth - ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    var height = width / _aspectRatio;

    return BlocProvider(
        create: (_) => CartBloc(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Shopping App'),
            actions: <Widget>[
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: TextButton.icon(
                      style: TextButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        //Navigator.pushNamed(context, CartPage.routeName);
                      },
                      icon: Icon(Icons.shopping_cart),
                      label: Text(''),
                      key: Key('cart'),
                    ),
                  ),
                  BlocBuilder<CartBloc, CartState>(builder: (_, cartState) {
                    List<int> cartItem = cartState.cartItem;
                    return Positioned(
                      left: 30,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                        child: Text(
                          '${cartItem.length}',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            ],
          ),
          body: ProductList(),
        ));
  }
}
