import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:razanafis_ui/login.dart';
import 'package:razanafis_ui/search.dart';
import 'package:razanafis_ui/home.dart';

class Root extends StatefulWidget {
  Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int currentPage = 0;

  List<Widget> pages = const [
    Home(),
    Search(),
    UserLogin(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: Container(
//       margin: EdgeInsets.all(24),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           header(context),
//         ],
//       ),
//     ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
          child: GNav(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            gap: 10,
            onTabChange: (index) => setState(() => currentPage = index),
            selectedIndex: currentPage,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.account_circle,
                text: 'Me',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
