import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier{
  final List<Map<String,dynamic>> cart=[];

  void addProduct(Map<String,dynamic> product){
    cart.add(product);
    notifyListeners();
  }

  void removeProduct(int index){
    cart.removeAt(index);
    notifyListeners();
  }

}