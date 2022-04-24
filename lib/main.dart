import 'package:flutter/material.dart';
import 'package:pbma11/Pilihan.dart';
import 'package:pbma11/Pendahuluan.dart';
import 'package:pbma11/Signup.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pendahuluan(),
    );
  }
}
