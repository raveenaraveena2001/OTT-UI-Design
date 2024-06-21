
import 'package:flutter/material.dart';
import 'package:untitled/prime1.dart';
import 'account.dart';
import 'downloads.dart';
import 'new&hot.dart';

class pri extends StatefulWidget {
  const pri({super.key});

  @override
  State<pri> createState() => _priState();
}

class _priState extends State<pri> {

  int _num=0;//by default we have to give

  final page=[
    prime1(),
    newhot(),
    downloads(),
    Account()
  ];

  void press(value)
  {
    setState(() {
      _num = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_num],

      bottomNavigationBar: BottomNavigationBar(
        //backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined),label: "New & Hot"),
          BottomNavigationBarItem(icon: Icon(Icons.file_download_outlined),label: "Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "My FlimVista")
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _num,
        onTap: press,
      ),
    );
  }
}
