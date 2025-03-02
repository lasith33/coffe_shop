import 'package:coffe_shop/screen/home_screen.dart';
import 'package:coffe_shop/screen/profile/provider/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FavoriteProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee Shop',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}



