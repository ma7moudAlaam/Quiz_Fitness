import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  int selectBottom = 0;
  int selectCarouselSlider = 0;
  bool selectChip1 = false;
  bool selectChip2 = false;
  bool selectChip3 = false;
  bool selectChip4 = false;

  changeBottomBar(int newSelected) {
    selectBottom = newSelected;
    notifyListeners();
  }

  carouselSlider(int newSelect) {
    selectCarouselSlider = newSelect;
    notifyListeners();
  }

  changeChipChoice1(bool newSelect) {
    selectChip1 = newSelect;
    notifyListeners();
  }

  changeChipChoice2(bool newSelect) {
    selectChip2 = newSelect;
    notifyListeners();
  }

  changeChipChoice3(bool newSelect) {
    selectChip3 = newSelect;
    notifyListeners();
  }

  changeChipChoice4(bool newSelect) {
    selectChip4 = newSelect;
    notifyListeners();
  }
}
