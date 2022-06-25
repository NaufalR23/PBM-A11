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
          child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.max, children: [
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
                    width: 60,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text("Tambah Detail",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            fontSize: 25)),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.875,
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
                            clothWidget("baju", "Baju", "baju", 1000),
                            clothWidget("trousers", "Celana", "trousers", 1000),
                            clothWidget("jacket", "Jaket", "jacket", 2000),
                            clothWidget("dress", "Dress", "dress", 3000),
                            clothWidget("mukenah", "Mukenah", "mukenah", 3000),
                            clothWidget("blanket", "Selimut", "blanket", 3000),
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
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                left: 50, right: 50, top: 0, bottom: 0),
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
                      height: 5,
                    ),
                  ]),
                ),
              ),
            ]),
          ),
        ));
  }

  Container clothWidget(String img, String name, String type, int price) {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 10, 0),
            // width: 100,
            height: 70,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/$img.png',
                  width: 60,
                ),
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 15, 53, 0),
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
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.black)),
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
                    child: Text(
                      '${order[type]!['total']}',
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
                        border: Border.all(color: Colors.black)),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.grey.shade800,
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

  Column categoryWidget(String img, String name, String type, bool isActive) {
    return Column(
      children: [
        Material(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  'assets/images/$img.png',
                  width: 60,
                ),
              ]),
            ),
          ),
        ),
        // Text(name, style: headingStyle)
      ],
    );
  }
}
