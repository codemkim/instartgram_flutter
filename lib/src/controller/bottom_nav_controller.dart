// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

enum PageName { HOME, SEARCH, UPLOAD, ACTIVATY, MYPAGE }

class BottomNavController extends GetxController {
  Switch() {}

  RxInt pageIndex = 0.obs;

  void changeBottomNav(int value) {
    var page = PageName.values[value];

    switch (page) {
      case PageName.UPLOAD:
        // TODO: Handle this case.
        break;
      case PageName.HOME:
      case PageName.SEARCH:
      case PageName.ACTIVATY:
      case PageName.MYPAGE:
        _changePage(value);
        break;
    }
  }

  void _changePage(int value) {
    pageIndex(value);
  }
}
