import 'package:coffe_shop/screen/profile/provider/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    final favoriteItems = favoriteProvider.favoriteItems;

    return Scaffold(
      appBar: AppBar(
        title: Text("Favorite Items"),
        backgroundColor: Colors.orange,
      ),
      body: favoriteItems.isEmpty
          ? Center(
        child: Text(
          "No favorite items yet!",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      )
          : ListView.builder(
        itemCount: favoriteItems.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.black54,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: ListTile(
              leading: Image.asset(
                favoriteItems[index]["image"]!,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              title: Text(
                favoriteItems[index]["name"]!,
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.red),
                onPressed: () {
                  favoriteProvider.toggleFavorite(
                    favoriteItems[index]["name"]!,
                    favoriteItems[index]["image"]!,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
