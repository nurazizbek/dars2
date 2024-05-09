import 'package:flutter/material.dart';
import 'package:insta/screns/home_page.dart';
import 'package:insta/screns/profil.page.dart';
import 'package:insta/screns/puls.dart';
import 'package:insta/screns/search.dart';

class Instagaram extends StatefulWidget {
  const Instagaram({super.key});

  @override
  State<Instagaram> createState() => _InstagaramState();
}

class _InstagaramState extends State<Instagaram> {
  int _curentindex = 0;

  List<Widget> Tugma = const [Homepage(), Search(), Puls(),ProfilPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tugma[_curentindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _curentindex,
        onTap: (int Newindex) {
          setState(() {
            _curentindex = Newindex;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),label: '',backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),label: '',backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow,),label: '',backgroundColor: Colors.black),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),label: '',backgroundColor: Colors.black
          ),
        ],
      ),
    );
  }
}
