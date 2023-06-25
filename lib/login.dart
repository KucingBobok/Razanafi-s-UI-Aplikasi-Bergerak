import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:razanafis_ui/account.dart';
import 'package:razanafis_ui/search.dart';
import 'home.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              header(context),
              inputfield(context),
            ],
          ),
        ),
        bottomNavigationBar: GNav(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          gap: 10,
          onTabChange: (tabNumb) {},
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'Home',
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Home()));
              },
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Search()));
              },
            ),
            GButton(
              icon: Icons.account_circle,
              text: 'Me',
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const UserLogin()));
              },
            ),
          ],
        ),
      ),
    );
  }

  header(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Login to your account!",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  inputfield(context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        TextField(
          decoration: InputDecoration(
              hintText: 'Username',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.2),
              filled: true,
              prefixIcon: Icon(Icons.person)),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
              hintText: 'Pasword',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none),
              fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
              filled: true,
              prefixIcon: Icon(Icons.password_sharp)),
          obscureText: true,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => UserAccount()));
          },
          child: Text(
            "Login",
            style: TextStyle(fontSize: 15),
          ),
          style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 16)),
        )
      ],
    );
  }
}
