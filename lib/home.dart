import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:razanafis_ui/login.dart';
import 'package:razanafis_ui/search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            header(context),
          ],
        ),
      ),
    );
  }
}

header(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: const [
      Text(
        "Razanafi's App",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text("Ini adalah tugas Aplikasi Bergerak")
    ],
  );
}
