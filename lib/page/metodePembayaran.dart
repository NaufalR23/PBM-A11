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
                                    color: Colors.white,
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
                                    color: Colors.white,
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
                                          '\n"dalam perbaikan"',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      )),
                                    ]))
                              ]),
                              Container(
                                  padding: EdgeInsets.fromLTRB(30, 40, 30, 40),
                                  margin: EdgeInsets.fromLTRB(35, 20, 35, 0),
                                  color: Colors.white,
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
