import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pbma11/Login.dart';
import 'package:pbma11/bottomnavigator.dart';
import 'package:pbma11/home.dart';
import 'package:pbma11/main.dart';
import 'package:pbma11/Signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
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
      key: scaffoldKey,
      backgroundColor: Color(0xFF0F82FF),
      body: SafeArea(
        child: SingleChildScrollView(
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
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                        child: Image.asset(
                          'assets/Group 2.png',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      'LAUNDSHIRT',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'Mobile App',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(44, 0, 44, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: TextFormField(
                                controller: usernameController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Username',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsetsDirectional.fromSTEB(
                                      24, 20, 24, 20),
                                ),
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF0F1113),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: TextFormField(
                                controller: emailController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsetsDirectional.fromSTEB(
                                      24, 20, 24, 20),
                                ),
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF0F1113),
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: TextFormField(
                                controller: passwordController,
                                obscureText: !passwordVisibility,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF95A1AC),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsetsDirectional.fromSTEB(
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
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                              child: ElevatedButton(
                                  onPressed: () {
                                    FirebaseAuth.instance
                                        .createUserWithEmailAndPassword(
                                            email: emailController.text,
                                            password: passwordController.text)
                                        .then((value) {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  BottomWidget()));
                                    }).onError(
                                      (error, stackTrace) {
                                        print("error ${error.toString()}");
                                      },
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: Size(300, 50),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      primary: Color(0xFF20C763)),
                                  child: const Text(
                                    "SignUp",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: "Poppins",
                                        color: Colors.white),
                                  )),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) {
                                            return LoginWidget();
                                          },
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      'Punya Akun?',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    )),
                              ],
                            ),
                          ],
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
}
