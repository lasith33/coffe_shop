import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile_picture.png'),
            ),
            SizedBox(height: 10),
            Text(
              'John Doe',
              style: TextStyle(
                 color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
              ),
            ),
            Text('johndoe@example.com', style: TextStyle(color: Colors.orange,fontSize: 20)),
            SizedBox(height: 20),
            Divider(),
            ListTile(
              leading: Icon(Icons.coffee,size: 50, color: Colors.orange),
              title: Text(
                'Favorite Coffee: Cappuccino',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.location_on,size: 50, color: Colors.orange),
              title: Text('Delivery Address: 123 Coffee Street, NY',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.payment,size: 50, color: Colors.orange),
              title: Text('Payment Method: Visa **** 1234',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.settings,size: 50, color: Colors.orange),
              title: Text('Settings',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.logout,size: 50, color: Colors.red),
              title: Text('Logout',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
