import 'dart:async';

import 'package:bloc_sample/data/cart_service.dart';
import 'package:bloc_sample/models/cart.dart';

class CartBloc{
  final cartStreamController = StreamController.broadcast();
  Stream get getStream => cartStreamController.stream;

  void addToCart(Cart item){
    CartService.addToCart(item);
  cartStreamController.sink.add(CartService.GetCart());
  }
  void removeFromCart(Cart item){
    CartService.removeFromCart(item);
    cartStreamController.sink.add(CartService.GetCart());
  }
  List<Cart>getCart(){
    return CartService.GetCart();
  }
}
final cartBloc = CartBloc();