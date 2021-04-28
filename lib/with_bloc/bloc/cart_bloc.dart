import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/with_bloc/bloc/state/cart_state.dart';

import 'event/cart_event.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(ProductAdded(cartItem: []));

  final List<int> _cartItems = [];
  List<int> get items => _cartItems;

  @override
  Stream<CartState> mapEventToState(CartEvent event) async* {
    if (event is AddProduct) {
      _cartItems.add(event.productIndex);
      yield ProductAdded(cartItem: _cartItems);
    } else if (event is RemoveProduct) {
      _cartItems.remove(event.productIndex);
      yield ProductRemoved(cartItem: _cartItems);
    }
  }
}
