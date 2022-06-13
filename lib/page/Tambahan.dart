import 'package:flutter/material.dart';
import 'package:pbma11/page/detailPesanan.dart';

class TambahanWidget extends StatefulWidget {
  const TambahanWidget({Key? key}) : super(key: key);

  @override
  State<TambahanWidget> createState() => _DetailPesananState();
}

class _DetailPesananState extends State<TambahanWidget> {
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
                  '\nTambahan',
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
                              Container(
                                margin: EdgeInsets.fromLTRB(40, 40, 40, 0),
                                padding: EdgeInsets.fromLTRB(10, 20, 10,
                                    10), //apply padding to all four sides
                                color: Colors.white,

                                child: Text(
                                  'Warna Pakaian',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 21, 0, 255),
                                    fontFamily: 'Poppins',
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                                margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          'Putih',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 23,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Rp.500',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Icon(Icons.plus_one),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                                margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          'Luntur',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 23,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Rp.500',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Icon(Icons.plus_one),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                margin: EdgeInsets.fromLTRB(40, 20, 40, 20),
                                color: Colors.white,
                                child: Text(
                                    'catatan blablabla \n lupa cara ngetik'),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(40, 20, 40, 20),
                                width: 200,
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
                                    "Selesai",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
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
