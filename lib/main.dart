// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hcn_call_center/phonebook.dart';
import 'package:hcn_call_center/recently.dart';
import 'package:hcn_call_center/voicemail.dart';
import 'favorite.dart';
import 'binh/keyboard.dart';

void main() {
  runApp(MaterialApp(
    title: "Voice call",
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  int index = 0;
  static  List<Widget> _widgetOptions = <Widget>[
    Favorites(),
    Recently(),
    PhoneBook(),
    Calculator(),
    Voicemail(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white30,
        type: BottomNavigationBarType.fixed ,
        items: [
          BottomNavigationBarItem(
         backgroundColor: Colors.blue,
            icon: Icon(Icons.star,size: 30,color: Colors.black45),
            label: "Mục ưa thích",

          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
              icon: Icon(Icons.access_time_filled_sharp,size: 30,color: Colors.black45,),
              label: "Gần đây",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
              icon: Icon(Icons.account_circle,size: 30,color: Colors.black45),
              label: "Danh bạ",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
              icon: Icon(Icons.keyboard_alt_rounded,size: 30,color: Colors.black45),
              label: "Bàn phím",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
              icon: Icon(Icons.voicemail_outlined,size: 30,color: Colors.black45),
              label: "Thư thoại",
          ),
        ],
        onTap:  (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: _widgetOptions[_currentIndex],
    );
  }
}
