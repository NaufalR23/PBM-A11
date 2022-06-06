import 'package:flutter/material.dart';
import 'package:pbma11/Pendahuluan.dart';
import 'package:pbma11/Pilihan.dart';
//import 'package:pbm_a11/Signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

// void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Laundshirt',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Pendahuluan(),
    );
  }
}
