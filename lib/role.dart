import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pbma11/Model/UserModel.dart';
import 'package:pbma11/bottomnavigator.dart';

class roleCheck extends StatefulWidget {
  const roleCheck({Key? key}) : super(key: key);

  @override
  State<roleCheck> createState() => _roleCheckState();
}

class _roleCheckState extends State<roleCheck> {
  UserModel? userDetails;

  var adminCheck;

  getUsername() async {
    final user = FirebaseAuth.instance.currentUser?.uid;
    print(user);
    if (user != null) {
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(user)
          .get()
          .then((value) {
        setState(() {
          adminCheck = (value.data()!['Role']);
        });
      });
    }
  }

  routing() {
    if (adminCheck == 'User') {
      return const BottomWidget();
    }
    if (adminCheck == null) {
      print('NULL');
      return BottomWidget();
    }
  }

  void initState() {
    super.initState();
    getUsername();
  }

  @override
  Widget build(BuildContext context) {
    CircularProgressIndicator();
    return FutureBuilder(
      future: getUsername(),
      builder: (context, snapshot) {
        return routing();
      },
    );
  }
}
