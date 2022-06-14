import 'package:flutter/material.dart';
import 'package:pbma11/page/detailPesanan.dart';

class TambahanWidget extends StatefulWidget {
  const TambahanWidget({Key? key}) : super(key: key);

  @override
  State<TambahanWidget> createState() => _DetailPesananState();
  
}

class _DetailPesananState extends State<TambahanWidget> {
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
                            height: 80,
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
                                clothWidget("Putih","Putih",  500),
                                clothWidget("Luntur","Luntur", 500),
                              ],
                            ),
                          ),
                        ),
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
      return Container(
        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
        child: Column(
          children: [
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
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
                  padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
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
                ]
              ),    
            ),
          ]
        ), 
    );
  }