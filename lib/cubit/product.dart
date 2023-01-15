import 'package:equatable/equatable.dart';

import '../product.dart';

abstract class ProductState extends Equatable{
  @override
  List<Object?> get props => [];
}

class ProductInitialState extends ProductState {
  @override
  List<Object> get props => [];
}

class ProductUpdatedState extends ProductState {
  final Product? product;
  @override
  List<Object> get props => [product!];
  ProductUpdatedState(this.product);
}