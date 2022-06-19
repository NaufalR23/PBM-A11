import 'package:flutter/material.dart';
import 'package:pbma11/page/detailPesanan.dart';

class opsiPengiriman extends StatefulWidget {
  const opsiPengiriman({Key? key}) : super(key: key);

  @override
  State<opsiPengiriman> createState() => _opsiPengirimanState();
}

class _opsiPengirimanState extends State<opsiPengiriman> {
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
                Text(
                  '\nOpsi Pengiriman',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width: 430,
                    height: 663.22,
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
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: [
                              Row(children: [
                                Container(
                                    padding:
                                        EdgeInsets.fromLTRB(10, 30, 10, 40),
                                    margin: EdgeInsets.fromLTRB(40, 50, 10, 0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 4,
                                          blurRadius: 5,
                                          offset: Offset(0,
                                              7), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Column(children: [
                                      new Container(
                                        width: 100.00,
                                        height: 100.00,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: ExactAssetImage(
                                                'assets/images/deliver.png'),
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          '\nAntar ke alamatmu',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )),
                                    ])),
                                Container(
                                    padding:
                                        EdgeInsets.fromLTRB(20, 40, 20, 40),
                                    margin: EdgeInsets.fromLTRB(10, 50, 10, 0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 4,
                                          blurRadius: 5,
                                          offset: Offset(0,
                                              7), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Column(children: [
                                      Container(
                                          width: 100.00,
                                          height: 90.00,
                                          decoration: new BoxDecoration(
                                              image: new DecorationImage(
                                            image: ExactAssetImage(
                                                'assets/images/meeting-point.png'),
                                            fit: BoxFit.fitHeight,
                                          ))),
                                      Container(
                                          child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          '\nAmbil di tempat',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )),
                                    ]))
                              ]),
                              Container(
                                  padding: EdgeInsets.fromLTRB(10, 30, 10, 40),
                                  margin: EdgeInsets.fromLTRB(120, 40, 120, 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.3),
                                        spreadRadius: 4,
                                        blurRadius: 5,
                                        offset: Offset(
                                            0, 7), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Column(children: [
                                    new Container(
                                      width: 100.00,
                                      height: 100.00,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: ExactAssetImage(
                                              'assets/images/delivered.png'),
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Text(
                                        '\nJemput ke alamatmu',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    )),
                                  ])),
                              Container(
                                margin: EdgeInsets.fromLTRB(40, 20, 40, 80),
                                width: 1000,
                                height: 45,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 46, 198, 51),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
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
                                  child: Text(
                                    "Konfirmasi",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFF5F5F5),
                          dense: false,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(0),
                              bottomRight: Radius.circular(0),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                        ),
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
