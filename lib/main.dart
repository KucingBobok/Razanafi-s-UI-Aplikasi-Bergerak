import 'package:flutter/material.dart';
import 'package:razanafis_ui/home.dart';
import 'package:razanafis_ui/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Razanafi"s App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: Root(),
    );
  }
}
