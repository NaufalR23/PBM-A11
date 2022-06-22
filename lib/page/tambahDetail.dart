import 'package:flutter/material.dart';
import 'package:pbma11/page/DetailPesananNew.dart';
import 'package:pbma11/page/Tambahan.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: use_key_in_widget_constructors
class TambahDetail extends StatefulWidget {
  @override
  _TambahDetailState createState() => _TambahDetailState();
}

class _TambahDetailState extends State<TambahDetail> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // get headingStyle => null;
  Map<String, Map<String, int>> order = {
    "baju": {'price': 1000, 'total': 0},
    "trousers": {'price': 1000, 'total': 0},
    "jacket": {'price': 2000, 'total': 0},
    "dress": {'price': 3000, 'total': 0},
    "mukenah": {'price': 3000, 'total': 0},
    "blanket": {'price': 3000, 'total': 0}
  };
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color.fromARGB(255, 15, 130, 255),
      body: SafeArea(
<<<<<<< HEAD
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child : Text(
                'Tambah Detail',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Container(
                padding: EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.8875,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            clothWidget("baju", "Baju","baju",  1000),
                            clothWidget("trousers", "Celana","trousers", 1000),
                            clothWidget("jacket", "Jaket","jacket",  2000),
                            clothWidget("dress", "Dress","dress",  3000),
                            clothWidget("mukenah", "Mukenah","mukenah",  3000),
                            clothWidget("blanket", "Selimut","blanket",  3000),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(height: 35,),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              width: 320,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Tambahan',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF090F13),
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsetsDirectional.fromSTEB(100, 0, 0, 0),
                                      child: GestureDetector(
                                        onTap: () async {
                                          await Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => TambahanWidget(),
                                            ),
                                          );
                                        },
                                        child: Icon(
                                          Icons.chevron_right_rounded,
                                          color: Colors.grey,
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // SizedBox(height: 3,),
                    Container(
                      padding: const EdgeInsets.all(15),
                      width: 355,
                      height: 80,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) {
                                  return const DetailPesanan();
                                },
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.only(
                                  left: 50, right: 50, top: 5, bottom: 0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              primary: const Color.fromARGB(255, 32, 199, 99)),
                          child: const Text(
                            "Selesai",
                            style: TextStyle(
                              fontSize: 25, 
                              fontFamily: "Poppins"
                            ),
                          ),
                        ),
                    ),
                  SizedBox(height: 10,),
                ]
=======
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
            child: Text(
              'Tambah Detail',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
            child: Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8564,
              decoration: BoxDecoration(
                color: Color(0xFFEEEEEE),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        clothWidget("baju", "Baju", 1000),
                        clothWidget("trousers", "Celana", 1000),
                        clothWidget("jacket", "Jaket", 2000),
                        clothWidget("dress", "Dress", 3000),
                        clothWidget("mukenah", "Mukenah", 3000),
                        clothWidget("blanket", "Selimut", 3000),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                          width: 320,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Colors.white,
                              width: 0,
                            ),
                          ),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Tambahan',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF090F13),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      100, 0, 0, 0),
                                  child: GestureDetector(
                                    onTap: () async {
                                      await Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              TambahanWidget(),
                                        ),
                                      );
                                    },
                                    child: Icon(
                                      Icons.chevron_right_rounded,
                                      color: Colors.grey,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  width: 355,
                  height: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) {
                            return const TambahanWidget();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.only(
                            left: 50, right: 50, top: 5, bottom: 0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        primary: const Color.fromARGB(255, 32, 199, 99)),
                    child: const Text(
                      "Selesai",
                      style: TextStyle(fontSize: 25, fontFamily: "Poppins"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ]),
            ),
          ),
        ]),
      ),
<<<<<<< HEAD
    ),
  );
}
  Container clothWidget(String img, String name, String type, int price)
  {
=======
    );
  }

  Container clothWidget(String img, String name, int price) {
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
<<<<<<< HEAD
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
            // width: 100,
            height: 70,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
=======
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
<<<<<<< HEAD
                Image.asset(
                    'assets/images/$img.png',
                    width: 60,
                  ),
=======
                Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                      image: DecorationImage(
                          image: AssetImage('assets/images/$img.png'))),
                ),
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 15, 60, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$name",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Rp.$price",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.red,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                // Row(
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (order[type]!['total'] != 0) {
                        order[type]!['total'] = order[type]!['total']! - 1;
                      }
                    });
                  },
                  child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
<<<<<<< HEAD
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),  
                          border: Border.all(
                            color: Colors.black
                          )),
                      child: Center(
                          child: Icon(
                        Icons.remove,
                        size: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  width: 20,
                  child: Center(
                    child: Text('${order[type]!['total']}',
                        style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        ),
                      ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      order[type]!['total'] = order[type]!['total']! + 1;
                      // totalPrice = totalPrice + order[type]!['price']!;
                    });
                  },
                  child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: Colors.white, 
                          borderRadius: BorderRadius.circular(100),  
                          border: Border.all(
                            color: Colors.black
                          )),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.grey.shade800,
=======
                          color: Colors.white, shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          "-",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: Text(
                          "0",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          "+",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052
                      ),
                    ),
                  ),
                ),    
              ],
            ),
          ),
        ],
      ),
    );
  }
<<<<<<< HEAD
  Column categoryWidget(String img, String name, String type, bool isActive)
  {
=======

  Column categoryWidget(String img, String name, bool isActive) {
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052
    return Column(
      children: [
        Material(
          child: Padding(
            padding: const EdgeInsets.all(12),
<<<<<<< HEAD
            child : Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Image.asset(
                    'assets/images/$img.png',
                    width: 60,
                  ),
                ]
              ),
=======
            child: Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  'assets/images/$img.png',
                  width: 48,
                ),
              ]),
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052
            ),
          ),
        ),
        // Text(name, style: headingStyle)
      ],
    );
  }
}
