import 'dart:async';

import 'package:bloc_sample/data/cart_service.dart';
import 'package:bloc_sample/data/product_service.dart';
import 'package:bloc_sample/models/cart.dart';
import 'package:bloc_sample/models/product.dart';

class ProductBloc{
  final productStreamController = StreamController.broadcast();

  Stream get getStream => productStreamController.stream;

  List<Product> getAll(){
    return ProductService.getALL();
  }
  List<Cart>getCart(){
    return CartService.GetCart();
  }
}
final productBloc = ProductBloc();