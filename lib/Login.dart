import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pbma11/bottomnavigator.dart';
import 'package:pbma11/home.dart';
import 'package:pbma11/main.dart';
// import 'package:pbma11/Signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pbma11/page/Register.dart';
import 'package:pbma11/page/lupa_password.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                          'assets/images/Group 2.png',
                          width: 150,
                          height: 150,
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
                      // child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
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
                                    width: 0,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 0,
                                  ),
                                  borderRadius: BorderRadius.circular(40),
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
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              validator: (password) =>
                                  password != null && password.length < 5
                                      ? 'Enter the min 5 password'
                                      : null,
                              controller: passwordController,
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
                                          return ChangePw();
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Lupa Password?',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  )),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            child: ElevatedButton(
                              onPressed: () async {
                                _doLogin();
                              },
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Poppins",
                                    color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(180, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                primary: Color(0xFF20C763),
                              ),
                            ),
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
                                          return RegisterPage();
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    'Tidak Punya Akun? SIGN UP',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.black),
                                  )),
                            ],
                          ),
                        ],
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
        text: "Berhasil Login",
        backgroundColor: Color(0xFF0F82FF),
        confirmBtnColor: Colors.green,
        onConfirmBtnTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const BottomWidget()),
          );
        });
  }

  void alert_salah(BuildContext context) {
    CoolAlert.show(
        context: context,
        type: CoolAlertType.error,
        title: "Terjadi Kesalahan",
        text: "Email atau Password Salah",
        backgroundColor: Color(0xFF0F82FF),
        confirmBtnColor: Colors.green,
        onConfirmBtnTap: () {
          Navigator.pop(context);
        });
  }

  void  _doLogin() async {
    try {
      var email = emailController.text;
      var pass = passwordController.text;
      print('sedang login');
      var res = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: pass,
      );
      var cb = res.user!.uid;
      print(cb);
      print(res);
      print('berhasil');
      berhasil(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == null) {
        alert_salah(context);
      }
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        alert_salah(context);
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        alert_salah(context);
      }
      ;
    }
  }
}