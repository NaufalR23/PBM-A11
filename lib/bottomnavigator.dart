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
  int index = 0;
  final pages = [
    HomeWidget(),
    AntrianWidget(),
    NotifikasiWidget(),
    ProfilWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: Colors.white,
            labelTextStyle: MaterialStateProperty.all(TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600,
                fontSize: 14)),
          ),
          child: NavigationBar(
            height: 60,
            backgroundColor: Colors.white,
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home),
                label: 'Beranda',
              ),
              NavigationDestination(
                icon: Icon(Icons.list_alt),
                label: 'Antrian',
              ),
              NavigationDestination(
                icon: Icon(Icons.notifications),
                label: 'Notifikasi',
              ),
              NavigationDestination(
                icon: Icon(Icons.person),
                label: 'profil',
              )
            ],
          )),
    );
  }
}
