import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:razanafis_ui/home.dart';
import 'package:razanafis_ui/root.dart';
import 'package:razanafis_ui/settings.dart';

import 'login.dart';

class UserAccount extends StatefulWidget {
  const UserAccount({super.key});

  @override
  State<UserAccount> createState() => _UserAccountState();
}

class PhotoItem {
  final String image;
  final String name;
  PhotoItem(this.image, this.name);
}

final List<PhotoItem> _items = [
  PhotoItem(
      "https://images.pexels.com/photos/1772973/pexels-photo-1772973.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "Stephan Seeber"),
  PhotoItem(
      "https://images.pexels.com/photos/1758531/pexels-photo-1758531.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "Liam Gant"),
];

class _UserAccountState extends State<UserAccount> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/137301.jpg",
      "assets/137302.jpg",
      "assets/137303.jpg",
      "assets/137304.jpg",
      "assets/137305.jpg",
      "assets/137323.jpg",
      "assets/IMG_20230221_020655.jpg",
      "assets/IMG_20230221_040753.jpg",
      "assets/IMG_20230221_044652.jpg",
      "assets/IMG_20230221_150743.jpg",
      "assets/LRM_20230220_223950.jpg",
      "assets/WhatsApp Image 2023-05-12 at 18.01.41.jpg",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("My Account"),
      ),
      drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  "Settings",
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => UserSettings()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  "Log Out",
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Root()),
                  );
                },
              ),
            ],
          )),
      body: Center(
        child: Container(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(images[index]);
            },
          ),
        ),
      ),
    );
  }
}
