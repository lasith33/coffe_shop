import 'package:flutter/material.dart';

class FavoriteProvider with ChangeNotifier {
  final List<Map<String, String>> _favoriteItems = [];

  List<Map<String, String>> get favoriteItems => _favoriteItems;

  void toggleFavorite(String itemName, String imagePath) {
    final existingIndex = _favoriteItems.indexWhere((item) => item["name"] == itemName);
    if (existingIndex >= 0) {
      _favoriteItems.removeAt(existingIndex);
    } else {
      _favoriteItems.add({"name": itemName, "image": imagePath});
    }
    notifyListeners();
  }

  bool isFavorite(String itemName) {
    return _favoriteItems.any((item) => item["name"] == itemName);
  }
}
