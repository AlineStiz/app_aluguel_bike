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

  void removeBike(Bike bike) {
    _bikes.remove(bike);
    notifyListeners();
  }

  checarCarrinhoCart(Bike bike, Function addBike) {

    if (!_bikes.contains(bike)) {
      addBike(bike);
      checar = "Item adicionado com Sucesso!!";
    } else{
      checar = "Você já adicionou esse item ao seu carrinho, LIMITE 1 UNIDADE!! ";
    }
      return checar;
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
