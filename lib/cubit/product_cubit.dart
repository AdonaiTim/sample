import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:samplebloc/cubit/product.dart';

import '../product.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitialState());

  TextEditingController priceController = TextEditingController();
  TextEditingController qtyController = TextEditingController();

  int price = 0;
  int qty = 0;
  int total = 0;

  void calc() {
    price = int.parse(priceController.text);
    qty = int.parse(qtyController.text);
    total = price * qty;
    emit(ProductUpdatedState(Product(price: price, qty: qty, total: total)));
  }
}

/*
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  Product? product;
  void increment() => emit(product!.price! + 1);
  void decrement() => emit(state - 1);
}*/
