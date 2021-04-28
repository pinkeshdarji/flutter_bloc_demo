import 'package:equatable/equatable.dart';

abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class AddProduct extends CartEvent {
  final int productIndex;

  const AddProduct(this.productIndex);

  @override
  List<Object> get props => [productIndex];

  @override
  String toString() => 'AddProduct { index: $productIndex }';
}

class RemoveProduct extends CartEvent {
  final int productIndex;

  const RemoveProduct(this.productIndex);

  @override
  List<Object> get props => [productIndex];

  @override
  String toString() => 'RemoveProduct { index: $productIndex }';
}
