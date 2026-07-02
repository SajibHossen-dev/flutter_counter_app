
import 'package:counter_app/models/counter_model.dart';
import 'package:flutter/material.dart';

class CounterViewmodel extends ChangeNotifier {
  final CounterModel _counter = CounterModel();

  int get count => _counter.count;

  void increment() {
    _counter.count++;
    notifyListeners();
  }

  void decrement() {
    _counter.count--;
    notifyListeners();
  }
  void reset() {
    _counter.count=0;
    notifyListeners();
  }
}
