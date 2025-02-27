import 'package:flutter/material.dart';

class ItemsWidget extends StatelessWidget {
  //const ItemsWidget({super.key});

  List img =[
    'Latte',
    'Espresso',
    'Black Coffee',
    'Cold Coffee',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150/195),
      children: [
        for(int i =0; i< img.length;i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            margin: EdgeInsets.symmetric(vertical: 8,horizontal: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff212325),
              boxShadow:[
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  spreadRadius: 1,
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "images/${img[i]}.jpg",
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],

    );
  }
}
