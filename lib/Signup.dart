import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pbma11/Login.dart';
import 'package:pbma11/bottomnavigator.dart';
import 'package:pbma11/home.dart';
<<<<<<< HEAD
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
=======
import 'package:pbma11/Login.dart';

class Signup extends StatefulWidget {
  const Signup({ Key? key }) : super(key: key);
>>>>>>> d470d4bc3a85a529862bdd46d00ca408b4728437

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }
  @override
  TextEditingController dateinput = TextEditingController();

  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF0F82FF),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(mainAxisSize: MainAxisSize.max, children: [
            Column(mainAxisSize: MainAxisSize.max, children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                  child: Image.asset(
                    'assets/Group 2.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
=======
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 15, 130, 255),
        body: SafeArea(
            child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(35))),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(right: 250),
                        // child : Center(
                          child: Text(
                            "Buat Akun Baru",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        // ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Username',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 15),
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Email',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: 'Password',
                              suffixIcon: const Icon(Icons.visibility)),
                        ),
                      ),
                      SizedBox(
                        width: 334,
                        height: 50,
                        child: TextButton(
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xFF20C763),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const HomePageWidget();
                              }));
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            )),
                      ),
                    ],
>>>>>>> d470d4bc3a85a529862bdd46d00ca408b4728437
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
                  child: Column(mainAxisSize: MainAxisSize.max, children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
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
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(24, 20, 24, 20),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF0F1113),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
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
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(24, 20, 24, 20),
                        ),
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF0F1113),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
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
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(24, 20, 24, 20),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => passwordVisibility = !passwordVisibility,
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
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: ElevatedButton(
                          onPressed: () {
                            FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                                    email: emailController.text,
                                    password: passwordController.text)
                                .then((value) {
                              print("Membuat Akun Baru");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BottomWidget()));
                            }).onError(
                              (error, stackTrace) {
                                print("error ${error.toString()}");
                              },
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(300, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              primary: Color(0xFF20C763)),
                          child: const Text(
                            "SignUp",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Poppins",
                                color: Colors.white),
                          )),
                    ),
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
                          'Already have an account?',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white),
                        )),
                  ]),
                ),
              )
            ]),
          ]),
        ),
      ),
    );
  }
}

