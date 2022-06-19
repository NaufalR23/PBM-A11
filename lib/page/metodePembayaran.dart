import 'package:flutter/material.dart';
import 'package:pbma11/page/detailPesanan.dart';

class metodePembayaran extends StatefulWidget {
  const metodePembayaran({Key? key}) : super(key: key);

  @override
  State<metodePembayaran> createState() => _metodePembayaranState();
}

class _metodePembayaranState extends State<metodePembayaran> {
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
                  '\nMetode Pembayaran',
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
                                        EdgeInsets.fromLTRB(30, 30, 30, 40),
                                    margin: EdgeInsets.fromLTRB(35, 50, 10, 0),
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
                                                'assets/images/dollar.png'),
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                      Container(
                                          child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          '\nCOD',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )),
                                    ])),
                                Container(
                                    padding:
                                        EdgeInsets.fromLTRB(30, 40, 30, 40),
                                    margin: EdgeInsets.fromLTRB(10, 50, 35, 0),
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
                                                'assets/images/transfer-money.png'),
                                            fit: BoxFit.fitHeight,
                                          ))),
                                      Container(
                                          child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          '\nTransfer',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )),
                                    ]))
                              ]),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 10, 30, 5),
                                  margin: EdgeInsets.fromLTRB(35, 20, 35, 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: (BorderSide(
                                            width: 1.0, color: Colors.grey))),
                                  ),
                                  child: Row(children: [
                                    Container(
                                        width: 40.00,
                                        height: 40.00,
                                        decoration: new BoxDecoration(
                                            image: new DecorationImage(
                                          image: ExactAssetImage(
                                              'assets/images/Logo Bank BCA.png'),
                                          fit: BoxFit.fitWidth,
                                        ))),
                                    Container(
                                        child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        '\t\t\t\tBank Central Asia',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    )),
                                  ])),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                                  margin: EdgeInsets.fromLTRB(35, 0, 35, 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: (BorderSide(
                                            width: 1.0, color: Colors.grey))),
                                  ),
                                  child: Row(children: [
                                    Container(
                                        width: 40.00,
                                        height: 40.00,
                                        decoration: new BoxDecoration(
                                            image: new DecorationImage(
                                          image: ExactAssetImage(
                                              'assets/images/BRI.png'),
                                          fit: BoxFit.fitWidth,
                                        ))),
                                    Container(
                                        child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        '\t\t\t\tBank Rakyat Indonesia',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    )),
                                  ])),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                                  margin: EdgeInsets.fromLTRB(35, 0, 35, 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: (BorderSide(
                                            width: 1.0, color: Colors.grey))),
                                  ),
                                  child: Row(children: [
                                    Container(
                                        width: 40.00,
                                        height: 40.00,
                                        decoration: new BoxDecoration(
                                            image: new DecorationImage(
                                          image: ExactAssetImage(
                                              'assets/images/mandiri.png'),
                                          fit: BoxFit.fitWidth,
                                        ))),
                                    Container(
                                        child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        '\t\t\t\tBank Mandiri',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    )),
                                  ])),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 5, 30, 5),
                                  margin: EdgeInsets.fromLTRB(35, 0, 35, 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border(
                                        bottom: (BorderSide(
                                            width: 1.0, color: Colors.grey))),
                                  ),
                                  child: Row(children: [
                                    Container(
                                        width: 40.00,
                                        height: 40.00,
                                        decoration: new BoxDecoration(
                                            image: new DecorationImage(
                                          image: ExactAssetImage(
                                              'assets/images/Logo bank BNI.png'),
                                          fit: BoxFit.fitWidth,
                                        ))),
                                    Container(
                                        child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        '\t\t\t\tBank Negara Indonesia',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    )),
                                  ])),
                              Container(
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
