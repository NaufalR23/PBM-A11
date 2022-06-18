import 'package:flutter/material.dart';
import 'package:pbma11/page/DetailPesananNew.dart';
import 'package:pbma11/page/detailPesanan.dart';

class TambahanWidget extends StatefulWidget {
  const TambahanWidget({Key? key}) : super(key: key);

  @override
  _TambahanWidgetState createState() => _TambahanWidgetState();
  
}

class _TambahanWidgetState extends State<TambahanWidget> {
  Map<String, Map<String, int>> order = {
    "Putih": {'price': 500, 'total': 0},
    "Luntur": {'price': 500, 'total': 0}
  };

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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child : Text(
                    'Tambahan',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.888,
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
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 30, 0,0),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0,20,0,0),
                            width: 333,
                            height: 60,
                            decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ), //apply padding to all four sides
                          child: Text(
                            'Warna Pakaian',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF197BFF),
                              fontFamily: 'Poppins',
                              fontSize: 25,
                            ),
                          ),
                        ),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                clothWidget("Putih","Putih", 500),
                                clothWidget("Luntur","Luntur",500),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // // width: 355,
                          // height: 200,
                          padding:
                            EdgeInsetsDirectional.fromSTEB(30, 15, 30, 0),
                            // height: 200,
                            child: TextFormField(
                              maxLines: 8,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Catatan',
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
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 0,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(24, 30, 24, 0),
                              ),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF0F1113),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                        ),
                        SizedBox(height: 45,),
                        Container(
                          width: 355,
                          height: 50,
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
                        SizedBox(height: 150,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
    Container clothWidget(String name, String type, int price,) {
      var order;
      return Container(
        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
        child: Column(
          children: [
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 30, 0),
            // width: 100,
            height: 80,
            margin: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Colors.white, 
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(0),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 15, 150, 0),
                  child: Column(
                      children: [
                        Text("$name", 
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 18,
                            ),
                          ),
                        Text("Rp.$price", 
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.red,
                          fontSize: 18,
                          ),
                        ),
                      ]
                    ),
                  ),
                  GestureDetector(
                  onTap: () {
                    setState(() {
                      // var order;
                      if (order[name]!['total'] != 0) {
                        order[name]!['total'] = order[name]!['total']! - 1;
                      }
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
                // SizedBox(
                //   width: 20,
                //   child: Center(
                //     child: Text('${order[name]!['total']}',
                //         style: TextStyle(
                //         fontFamily: 'Poppins',
                //         color: Colors.black,
                //         fontSize: 25,
                //         fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //   ),
                // ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      order[name]!['total'] = order[name]!['total']! + 1;
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
                      ),
                    ),
                  ),
                ),  
                ]
              ),    
            ),
          ]
        ), 
    );
  }
  
  void setState(Null Function() name) {
  }