import 'package:flutter/material.dart';
import 'package:fquiz/models/category.dart';
import 'package:fquiz/providers/base_provider.dart';

class CategoryProvider extends BaseProvider with ChangeNotifier {
  late Category _category;

  Category get category => _category;

  set category(Category category) {
    _category = category;
    notifyListeners();
  }
}
