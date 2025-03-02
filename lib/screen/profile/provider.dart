import 'package:flutter/material.dart';

class Provider extends ChangeNotifier {
  // This map will hold the favorite items (e.g., by their image name).
  Map<String, bool> _favorites = {};

  // This method checks if the item is in the favorites list.
  bool isFavorite(String img) {
    return _favorites[img] ?? false; // Default to false if the item isn't in the map
  }

  // This method toggles the favorite status of an item.
  void toggleFavorite(String img) {
    if (_favorites.containsKey(img)) {
      _favorites[img] = !_favorites[img]!; // Toggle the favorite status
    } else {
      _favorites[img] = true; // If not in the map, mark it as a favorite
    }
    notifyListeners(); // Notify listeners to update the UI
  }
}
