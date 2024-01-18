import 'package:flutter/material.dart';

class BorsaController {
  static List<bool> initializeSelectionList() {
    return List.generate(5, (index) => false);
  }
}
