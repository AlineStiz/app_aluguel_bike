import 'package:flutter/material.dart';
import 'package:mvp_app_aluguel_bikes/Models/bike.dart';

class CartItem with ChangeNotifier {
  List<Bike> _bikes = [];
  List<Bike> get bikes => [..._bikes];

  int get total => _bikes.length;

  String checar = "";
  double somaTotal = 0;

  void addBike(Bike bike) {
    _bikes.add(bike);
    notifyListeners();
  }

  checarCarrinhoCart(Bike bike) {

    if (_bikes.contains(bike)) {
      checar = "Você já adicionou esse item ao seu carrinho, LIMITE 1 UNIDADE!! ";
    } else{
      addBike(bike);
      checar = "Item adicionado com Sucesso!!";

    }
    return checar;
  }

  void removeBike(Bike bike) {
    _bikes.remove(bike);
    notifyListeners();
  }

  void sumPrince(Bike bike) {
    somaTotal += bike.preco;
    notifyListeners();
  }

  void mPrince(Bike bike) {
    somaTotal -= bike.preco;
    notifyListeners();
  }


}
