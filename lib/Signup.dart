import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pbma11/Login.dart';
import 'package:pbma11/Model/UserModel.dart';
import 'package:pbma11/bottomnavigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pbma11/rounded_button.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  Future<FirebaseApp> _initializeFirebase() async {
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeFirebase(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const Body();
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late String _email, _password;
  String? _username, _alamat;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _alamatController = TextEditingController();
  late bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      backgroundColor: Color(0xFF0F82FF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
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
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30, 30, 30, 0),
                                child: TextFormField(
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
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            24, 20, 24, 20),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0F1113),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30, 20, 30, 0),
                                child: TextFormField(
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
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            24, 20, 24, 20),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0F1113),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30, 20, 30, 0),
                                child: TextFormField(
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
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            24, 20, 24, 20),
                                  ),
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF0F1113),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30, 20, 30, 10),
                                child: TextFormField(
                                  controller: _passwordController,
                                  obscureText: !passwordVisibility,
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
                                  onSaved: (input) => _password = input!,
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
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            20, 20, 20, 20),
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
                                    color: Color(0xFF000000),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),

                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return const LoginWidget();
                                      },
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Udah Punya Akun?",
                                  style: TextStyle(
                                      color: Color(0xFF838383),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      decoration: TextDecoration.underline),
                                ),
                              ),

                              Container(
                                child: RoundedButton(
                                  text: "SignUp",
                                  press: () async {
                                    final FormState = _formKey.currentState;
                                    if (FormState!.validate()) {
                                      FormState.save();
                                      try {
                                        FirebaseAuth.instance
                                            .createUserWithEmailAndPassword(
                                                email: _email,
                                                password: _password)
                                            .then((value) async {
                                          User? user =
                                              FirebaseAuth.instance.currentUser;
                                          UserModel userModel = UserModel();

                                          userModel.Username = _username;
                                          userModel.Alamat = _alamat;

                                          await FirebaseFirestore.instance
                                              .collection('Users')
                                              .doc(user!.uid)
                                              .set({
                                            'Username': _username,
                                            'Alamat': _alamat,
                                            'Role': 'User',
                                          });
                                        });

                                        await showDialog(
                                            context: context,
                                            builder: (context) => AlertDialog(
                                                  title: const Text(
                                                    "Telah Berhasil Daftar",
                                                    style: TextStyle(
                                                        fontFamily: "Poppins",
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 28),
                                                  ),
                                                  content: const Text(
                                                    "Akunmu berhasil didaftarkan!",
                                                    style: TextStyle(
                                                        fontFamily: "Poppins",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 16),
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context)
                                                            .pop();
                                                      },
                                                      child: Text('OK'),
                                                    )
                                                  ],
                                                ));
                                        Navigator.of(context).pop();
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const BottomWidget();
                                        }));
                                      } catch (e) {
                                        print(e);
                                      }
                                    }
                                  },
                                ),
                              ),

                              // Container(
                              //   padding:
                              //       EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              //   child: ElevatedButton(
                              //       onPressed: () async {
                              //         FirebaseAuth.instance
                              //             .createUserWithEmailAndPassword(
                              //                 email: emailController.text,
                              //                 password: passwordController.text)
                              //             .then((value) {
                              //           Navigator.push(
                              //               context,
                              //               MaterialPageRoute(
                              //                   builder: (context) =>
                              //                       BottomWidget()));
                              //         }).onError(
                              //           (error, stackTrace) {
                              //             print("error ${error.toString()}");
                              //           },
                              //         );
                              //       },
                              //       style: ElevatedButton.styleFrom(
                              //           minimumSize: Size(180, 50),
                              //           shape: RoundedRectangleBorder(
                              //               borderRadius:
                              //                   BorderRadius.circular(50)),
                              //           primary: Color(0xFF20C763)),
                              //       child: const Text(
                              //         "REGISTER",
                              //         style: TextStyle(
                              //             fontSize: 18,
                              //             fontFamily: "Poppins",
                              //             color: Colors.white),
                              //       )),
                              // ),
                              // Row(
                              //   mainAxisSize: MainAxisSize.max,
                              //   mainAxisAlignment: MainAxisAlignment.center,
                              //   children: [
                              //     TextButton(
                              //         onPressed: () {
                              //           Navigator.push(
                              //             context,
                              //             MaterialPageRoute(
                              //               builder: (_) {
                              //                 return LoginWidget();
                              //               },
                              //             ),
                              //           );
                              //         },
                              //         child: const Text(
                              //           'Sudah Punya Akun? SIGN IN',
                              //           style: TextStyle(
                              //               fontSize: 18,
                              //               fontWeight: FontWeight.w400,
                              //               color: Color(0xFF0F82FF)),
                              //         )),
                              //   ],
                              // ),
                              // Text(
                              //   '------OR------',
                              //   style: TextStyle(
                              //     fontFamily: 'Poppins',
                              //     color: Colors.black,
                              //   ),
                              // ),
                              // Padding(
                              //   padding:
                              //       EdgeInsetsDirectional.fromSTEB(10, 10, 10, 5),
                              //   child: Row(
                              //     mainAxisSize: MainAxisSize.max,
                              //     mainAxisAlignment:
                              //         MainAxisAlignment.spaceEvenly,
                              //     children: [
                              //       Container(
                              //         width: 40,
                              //         height: 40,
                              //         decoration: BoxDecoration(
                              //           color: Color(0xFF090F13),
                              //           boxShadow: [
                              //             BoxShadow(
                              //               blurRadius: 5,
                              //               color: Color(0x3314181B),
                              //               offset: Offset(0, 2),
                              //             )
                              //           ],
                              //           shape: BoxShape.circle,
                              //         ),
                              //         alignment: AlignmentDirectional(0, 0),
                              //         child: FaIcon(
                              //           FontAwesomeIcons.google,
                              //           color: Colors.white,
                              //           size: 24,
                              //         ),
                              //       ),
                              //       Container(
                              //         width: 40,
                              //         height: 40,
                              //         decoration: BoxDecoration(
                              //           color: Color(0xFF090F13),
                              //           boxShadow: [
                              //             BoxShadow(
                              //               blurRadius: 5,
                              //               color: Color(0x3314181B),
                              //               offset: Offset(0, 2),
                              //             )
                              //           ],
                              //           shape: BoxShape.circle,
                              //         ),
                              //         alignment: AlignmentDirectional(0, 0),
                              //         child: FaIcon(
                              //           FontAwesomeIcons.facebookF,
                              //           color: Colors.white,
                              //           size: 24,
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
