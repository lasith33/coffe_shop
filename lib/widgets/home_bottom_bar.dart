import 'package:coffe_shop/screen/home_screen.dart';
import 'package:coffe_shop/screen/profile/favorite_screen.dart';
import 'package:coffe_shop/screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';


class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xff212325),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Icon(
              Icons.home,
              color: Colors.orange,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FavoriteScreen()),
              );
            },
            child: const Icon(
              Icons.favorite_outline,
              color: Colors.orange,
              size: 35,
            ),
          ),

          InkWell(
            onTap: () {
             // Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationsScreen()));
            },
            child: Icon(
              Icons.notifications,
              color: Colors.orange,
              size: 35,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
            },
            child: Icon(
              Icons.person,
              color: Colors.orange,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
