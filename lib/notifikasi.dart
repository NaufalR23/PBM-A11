import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotifikasiWidget extends StatefulWidget {
  const NotifikasiWidget({Key? key}) : super(key: key);

  @override
  _NotifikasiWidgetState createState() => _NotifikasiWidgetState();
}

class _NotifikasiWidgetState extends State<NotifikasiWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  late DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
                  child: Text(
                    'Notifikasi',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
                    width:  400,
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
                    child: Container(
                      child : Column(
                        children: [ 
                        Container(
                          alignment: Alignment.centerRight,
                          margin: EdgeInsets.only(top: 20, bottom: 0, right: 30),
                          child: TextButton(
                            onPressed: () {
                              showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2001),
                                      lastDate: DateTime(2222))
                                  .then((date) {
                                setState(() {
                                  _dateTime = date!;
                                });
                              });
                            },
                            child: Text(
                              "Pilih Tanggal",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.black,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsetsDirectional.fromSTEB(20, 20, 12, 0),
                            scrollDirection: Axis.vertical,
                            children: [
                              ListTile(
                                title: Text(
                                  'Promo Laundry',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 22,
                                  ),
                                ),
                                subtitle: Text(
                                  'Cek catatan transaksimu dan klaim voucher gratis ongkir dari LAUNDSHIRT',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                              ),
                              ListTile(
                                title: Text(
                                  'Promo Laundry',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 22,
                                  ),
                                ),
                                subtitle: Text(
                                  'Cek catatan transaksimu dan klaim voucher gratis ongkir dari LAUNDSHIRT',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Promo Laundry',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 22,
                                  ),
                                ),
                                subtitle: Text(
                                  'Cek catatan transaksimu dan klaim voucher gratis ongkir dari LAUNDSHIRT',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'Promo Laundry',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 22,
                                  ),
                                ),
                                subtitle: Text(
                                  'Cek catatan transaksimu dan klaim voucher gratis ongkir dari LAUNDSHIRT',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                  ),
                                ),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                              ),
                            ],
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
        ),
      ),
    );
  }
}
