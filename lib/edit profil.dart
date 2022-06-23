import 'dart:ffi';
import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pbma11/Pendahuluan.dart';
import 'package:pbma11/rounded_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class EditWidget extends StatefulWidget {
  const EditWidget({Key? key}) : super(key: key);

  @override
  State<EditWidget> createState() => _EditWidgetState();
}

bool seePass = false;

class _EditWidgetState extends State<EditWidget> {
  final user = FirebaseAuth.instance.currentUser;

  TextEditingController _newUsername = TextEditingController();
  TextEditingController _newEmail = TextEditingController();
  TextEditingController _newPassword = TextEditingController();
  TextEditingController _newAlamat = TextEditingController();
  late String _username, _email, _password, _alamat;
  var _oldUsername, _oldAlamat;
  late String _oldEmail, verifEmail, verifPass;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  File? _image;

  Future getUsername() async {
    final user = FirebaseAuth.instance.currentUser?.uid;
    final userEmail = FirebaseAuth.instance.currentUser?.email;
    _oldEmail = userEmail.toString();
    if (user != null) {
      await FirebaseFirestore.instance
          .collection('Admins')
          .doc(user)
          .get()
          .then((value) {
        _oldUsername = (value.data()!['Username']);
        _oldAlamat = (value.data()!['Alamat']);
      });
    }
  }

  Future updateData() async {
    final user = FirebaseAuth.instance.currentUser?.uid;
    await FirebaseFirestore.instance
        .collection('Admins')
        .doc(user)
        .update({'Username': _newUsername.text, 'Alamat': _newAlamat.text});
  }

  Future DeleteUser() async {
    final User = FirebaseAuth.instance.currentUser?.uid;
    await FirebaseFirestore.instance
        .collection('Admins')
        .doc(user!.uid)
        .delete();
    await FirebaseAuth.instance.currentUser?.delete();
    await FirebaseAuth.instance.signOut();
  }

  Future pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemp = File(image.path);
    setState(() => this._image = imageTemp);
  }

  @override
  void dispose() {
    _newPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    getUsername();
    return Container(
        child: Scaffold(
      backgroundColor: Color(0xFF197BFF),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              const Text(
                "Edit Profile",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                    fontSize: 36),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 70.0,
                        child: ClipOval(
                          child: (_image != null)
                              ? Image.file(
                                  _image!,
                                  width: 250,
                                  height: 250,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset("assets/images/profile.png"),
                        ),
                        backgroundColor: Colors.white,
                      ),
                      Positioned(
                          bottom: 0,
                          right: 10,
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: ((Builder) => bottomSheet()));
                            },
                            child: const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.camera_alt,
                                color: Colors.black,
                                size: 28,
                              ),
                            ),
                          )
                          // ),
                          )
                    ],
                  ),
                ),
              ),
              FutureBuilder(
                future: getUsername(),
                builder: (context, snapshot) {
                  return Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: TextFormField(
                      controller: _newUsername,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username tidak bisa kosong";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) => _username = value!,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.black,
                            size: 24,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(24, 20, 24, 20),
                          hintText: _oldUsername,
                          labelText: "Username"),
                    ),
                  );
                },
              ),
              FutureBuilder(
                future: getUsername(),
                builder: (context, snapshot) {
                  return Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: TextFormField(
                      controller: _newEmail,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email tidak bisa kosong";
                        }
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return ("Masukkan email yang valid");
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) => _email = value!,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.mail,
                            color: Colors.black,
                            size: 24,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(24, 20, 24, 20),
                          hintText: _oldEmail,
                          labelText: "Email"),
                    ),
                  );
                },
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: TextFormField(
                  controller: _newPassword,
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
                  obscureText: seePass,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.lock,
                      color: Colors.black,
                      size: 24,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 20,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 20,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 20,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 20,
                      ),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(24, 20, 24, 20),
                    hintText: "**********",
                    labelText: "Password",
                    suffixIcon: IconButton(
                      icon: const Icon(
                        Icons.visibility,
                      ),
                      onPressed: () {
                        setState(() {
                          seePass = !seePass;
                        });
                      },
                    ),
                  ),
                ),
              ),
              FutureBuilder(
                future: getUsername(),
                builder: (context, snapshot) {
                  return Container(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: TextFormField(
                      controller: _newAlamat,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password tidak bisa kosong";
                        } else {
                          return null;
                        }
                      },
                      onSaved: (value) => _alamat = value!,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.house,
                            color: Colors.black,
                            size: 24,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 20,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(24, 20, 24, 20),
                          hintText: _oldAlamat,
                          labelText: "Alamat"),
                    ),
                  );
                },
              ),
              Container(
                padding: const EdgeInsets.only(top: 30),
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text(
                                "Hapus Akun?",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700,
                                    fontSize: 36),
                              ),
                              content: const Text(
                                "Apakah Anda Yakin Untuk Hapus Akun?",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: (() {
                                    Navigator.of(context).pop();
                                  }),
                                  child: const Text('Batal'),
                                ),
                                TextButton(
                                  onPressed: (() {
                                    DeleteUser();
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const Pendahuluan();
                                    }));
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text(
                                        'Akun Berhasil Dihapus',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      backgroundColor: Colors.red,
                                    ));
                                  }),
                                  child: const Text('Hapus'),
                                )
                              ],
                            ));
                  },
                  child: const Text(
                    "Hapus Akun",
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: RoundedButton(
                  text: "Simpan",
                  press: () async {
                    final FormState = _formKey.currentState;
                    if (FormState!.validate()) {
                      FormState.save();
                      try {
                        const CircularProgressIndicator();
                        updateData();
                        getUsername();
                        await FirebaseAuth.instance.currentUser
                            ?.updateEmail(_email)
                            .then((value) {});
                        await FirebaseAuth.instance.currentUser
                            ?.updatePassword(_password)
                            .then((value) {});
                        FirebaseAuth.instance.signOut;
                        await showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  title: const Text(
                                    "Update Berhasil",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w700,
                                        fontSize: 28),
                                  ),
                                  content: const Text(
                                    "Perubahan Berhasil Disimpan, Silahkan login kembali",
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16),
                                  ),
                                  actions: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('OK'))
                                  ],
                                ));
                        Navigator.of(context).pop();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const Pendahuluan();
                        }));
                      } catch (e) {
                        print(e);
                      }
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  void offer(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text(
        "Simpan",
        style: TextStyle(color: Color(0xFF0F82FF)),
      ),
      content: Text("Simpan Perubahan?"),
      actions: [
        ElevatedButton(
          onPressed: () {
            print("Test");
          },
          child: Text(
            "Ya",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text(
            "Tidak",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        )
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertDialog;
        });
  }

  Widget bottomSheet() {
    return Container(
        height: 100.0,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: <Widget>[
            Text(
              "Pilih Profile Photo",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 24),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton.icon(
                  icon: Icon(Icons.camera),
                  onPressed: () => pickImage(ImageSource.camera),
                  style: TextButton.styleFrom(primary: Colors.black),
                  label: Text("Kamera"),
                ),
                TextButton.icon(
                  icon: Icon(Icons.image),
                  onPressed: () => pickImage(ImageSource.gallery),
                  style: TextButton.styleFrom(primary: Colors.black),
                  label: Text("Galeri"),
                )
              ],
            )
          ],
        ));
  }
  // void takePhoto(ImageSource source) async {
  //   final pickedFile = await _picker.pickImage(source: source);
  //   setState(() {
  //     _imageFile = pickedFile;
  //   });
  // }
}
