import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pbma11/Login.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

bool seePass = true;

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _alamatController = TextEditingController();
  late bool passwordVisibility;

  @override
  void initState() {
    super.initState();
    passwordVisibility = false;
  }

  var username = '';
  var alamat = '';
  var email = '';
  var pass = '';

  late String _email, _password;
  String? _username, _alamat;
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF0F82FF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Image.asset(
                          'assets/images/Group 2.png',
                          width: 150,
                          height: 150,
                        ),
                      ),
                    ),
                    Text(
                      'Buat akun baru',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.66,
                        decoration: BoxDecoration(
                          color: Color(0xFFEEEEEE),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30, 20, 30, 0),
                                child: TextFormField(
                                  // showCursor: false,
                                  controller: _usernameController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Username tidak bisa kosong";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (value) => _username = value!,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Username',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    // enabledBorder: InputBorder.none,
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0F1113),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  onChanged: (v) {
                                    username = v;
                                  },
                                ),
                              ),
                              Container(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30, 15, 30, 0),
                                child: TextFormField(
                                  // showCursor: false,
                                  controller: _alamatController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Alamat tidak bisa kosong";
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (value) => _alamat = value!,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Alamat',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    // enabledBorder: InputBorder.none,
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0F1113),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  onChanged: (v) {
                                    alamat = v;
                                  },
                                ),
                              ),
                              Container(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30, 15, 30, 0),
                                child: TextFormField(
                                  // showCursor: false,
                                  controller: _emailController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "Email tidak bisa kosong";
                                    }
                                    if (!RegExp(
                                            "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                        .hasMatch(value)) {
                                      return ("Masukkan email yang valid");
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (value) => _email = value!,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    hintText: 'Email',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    // enabledBorder: InputBorder.none,
                                    fillColor: Colors.white,
                                    filled: true,
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0F1113),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  onChanged: (v) {
                                    email = v;
                                  },
                                ),
                              ),
                              Container(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30, 15, 30, 10),
                                child: TextFormField(
                                  // showCursor: false,
                                  controller: _passwordController,
                                  validator: (value) {
                                    RegExp regex = RegExp(r'^.{6,}$');
                                    if (value!.isEmpty) {
                                      return "Password tidak bisa kosong";
                                    }
                                    if (!regex.hasMatch(value)) {
                                      return ("Password min. 6 karakter");
                                    } else {
                                      return null;
                                    }
                                  },
                                  onSaved: (value) => _password = value!,
                                  obscureText: !passwordVisibility,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    hintStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF95A1AC),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    // enabledBorder: InputBorder.none,
                                    fillColor: Colors.white,
                                    filled: true,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            24, 20, 24, 20),
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                        () => passwordVisibility =
                                            !passwordVisibility,
                                      ),
                                      child: Icon(
                                        passwordVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: Color(0xFF95A1AC),
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0F1113),
                                    fontWeight: FontWeight.normal,
                                  ),
                                  onChanged: (v) {
                                    pass = v;
                                  },
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    100, 10, 0, 0),
                                child: ElevatedButton(
                                  onPressed: () async {
                                    var collection = FirebaseFirestore.instance
                                        .collection('Users');
                                    var res = await collection.add({
                                      'nama': username,
                                      'email': email,
                                      'alamat': alamat,
                                      'password': pass
                                    });

                                    print(res);
                                    _doSignUp();
                                  },
                                  child: Text(
                                    "REGISTER",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: "Poppins",
                                        color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(180, 50),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    primary: Color(0xFF20C763),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      "Sudah Punya Akun?",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontFamily: "Poppins",
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                          return LoginWidget();
                                        })));
                                      },
                                      child: Text(
                                        "SIGNUP",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: "Poppins",
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void berhasil(BuildContext context) {
    CoolAlert.show(
        context: context,
        type: CoolAlertType.success,
        title: "Success!",
        text: "Akunmu berhasil didaftarkan!",
        backgroundColor: Color(0xFF0F82FF),
        confirmBtnColor: Colors.green,
        onConfirmBtnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginWidget()),
          );
        });
  }

  void alert_salah(BuildContext context) {
    CoolAlert.show(
        context: context,
        type: CoolAlertType.error,
        title: "Terjadi Kesalahan",
        text: "Email atau Password Tidak Boleh Kosong",
        backgroundColor: Color(0xFF0F82FF),
        confirmBtnColor: Colors.green,
        onConfirmBtnTap: () {
          Navigator.pop(context);
        });
  }

  void _doSignUp() async {
    try {
      var email = _emailController.text;
      var pass = _passwordController.text;
      var res = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: pass,);
      print(res);
      print('Berhasil daftar');
      berhasil(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('Password should be at least 6 characters');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  void _add_user() async {
    var collection = FirebaseFirestore.instance.collection('user');
    var res = await collection.add({
      'username': username,
      'alamat': alamat,
      'email': email,
      'pass': pass,
    });
    print('berhasil ditambahkan');
    print(res);
  }
}

// 