import 'package:flutter/material.dart';
import 'package:pbma11/Login.dart';
import 'package:pbma11/bottomnavigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class Pilihan extends StatelessWidget {
  const Pilihan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 15, 130, 255),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(height: 50),
            Container(child: Image.asset('assets/Group 2.png')),
            Container(
                alignment: Alignment.center,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "LAUNDSHIRT",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 50,
                        color: Colors.white,
                        fontFamily: "Poppins"),
                  ),
                )),
            Container(
                alignment: Alignment.center,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Mobile App",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontFamily: "Poppins"),
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                alignment: Alignment.center,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Login Sebagai:",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: "Poppins",
                      color: Colors.white,
                    ),
                  ),
                )),
            Container(
              padding: const EdgeInsets.all(15),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return const LoginWidget();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(
                          left: 50, right: 50, top: 5, bottom: 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      primary: const Color.fromARGB(255, 32, 199, 99)),
                  child: const Text(
                    "Customer",
                    style: TextStyle(fontSize: 30, fontFamily: "Poppins"),
                  )),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(
                          left: 50, right: 50, top: 5, bottom: 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      primary: const Color.fromARGB(255, 32, 199, 99)),
                  child: const Text(
                    "Karyawan",
                    style: TextStyle(fontSize: 30, fontFamily: "Poppins"),
                  )),
            )
          ],
        )),
      ),
    );
  }
}
