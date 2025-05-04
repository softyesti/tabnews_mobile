import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RootPageController extends GetxController {
  final Rx<int> _current = Rx(0);
  final pageController = PageController();

  int get current => _current.value;
  set current(int current) => _current.value = current;

  void jumpTo(int page) {
    _current.value = page;
    pageController.jumpToPage(page);
  }
}
