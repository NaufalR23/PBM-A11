import 'package:flutter/material.dart';

enum Bahasa { Indonesia, English }

class BahasaWidget extends StatefulWidget {
  const BahasaWidget({Key? key}) : super(key: key);

  @override
  State<BahasaWidget> createState() => _BahasaWidgetState();
}

class _BahasaWidgetState extends State<BahasaWidget> {
  Bahasa? _character = Bahasa.Indonesia;

  static const String _title = 'Pilihan Bahasa';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF197BFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text("Pilihan Bahasa",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 25)),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.8688,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child : Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 20, 140, 20),
                          child: Text(
                            'Bahasa yang dipilih :',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        RadioListTile<Bahasa>(
                          title: const Text('Indonesia'),
                          value: Bahasa.Indonesia,
                          groupValue: _character,
                          onChanged: (Bahasa? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                        RadioListTile<Bahasa>(
                          title: const Text('English'),
                          value: Bahasa.English,
                          groupValue: _character,
                          onChanged: (Bahasa? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                      ]
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}