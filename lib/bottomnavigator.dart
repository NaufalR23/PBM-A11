import 'package:flutter/material.dart';
import 'package:pbma11/antrian.dart';
import 'package:pbma11/home.dart';
import 'package:pbma11/notifikasi.dart';
import 'package:pbma11/profil.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:flutter/src/material/icons.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeWidget(),
    AntrianWidget(),
    NotifikasiWidget(),
    ProfilWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: const Text('Bottom Navigation Bar'),
      //),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 15, 130, 255),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Antrian',
            backgroundColor: Color.fromARGB(255, 15, 130, 255),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifikasi',
            backgroundColor: Color.fromARGB(255, 15, 130, 255),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profil',
            backgroundColor: Color.fromARGB(255, 15, 130, 255),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
