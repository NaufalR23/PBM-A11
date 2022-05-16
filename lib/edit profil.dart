import 'dart:io';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pbma11/rounded_button.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

bool seePass = false;

class _BodyState extends State<Body> {
  File? _image;

  Future pickImage(ImageSource source) async {
    final image = await ImagePicker().pickImage(source: source);
    if (image == null) return;
    final imageTemp = File(image.path);
    setState(() => this._image = imageTemp);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Edit Profile",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: 36),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
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
                            : Image.asset("assets/profil.png"),
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
                          child: CircleAvatar(
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
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 24,
                    ),
                    hintText: "test",
                    labelText: "Username"),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.black,
                      size: 24,
                    ),
                    hintText: "test123@gmail.com",
                    labelText: "Email"),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                obscureText: seePass,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.black,
                    size: 24,
                  ),
                  hintText: "**********",
                  labelText: "Password",
                  suffixIcon: IconButton(
                    icon: Icon(
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
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.house,
                      color: Colors.black,
                      size: 24,
                    ),
                    hintText: "test",
                    labelText: "Alamat"),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30),
              alignment: Alignment.center,
              child: Text(
                "Hapus Akun",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    decoration: TextDecoration.underline),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: RoundedButton(
                text: "Simpan",
                press: () {},
              ),
            )
          ],
        ),
      ),
    ));
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
              height: 20,
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
