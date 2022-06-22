import 'package:flutter/material.dart';
import 'package:pbma11/antrian.dart';
import 'package:pbma11/home.dart';
import 'package:pbma11/location/editProfil_alamat.dart';
import 'package:pbma11/page/Tambahan.dart';
import 'package:pbma11/page/metodePembayaran.dart';
import 'package:pbma11/page/opsiPengiriman.dart';
<<<<<<< HEAD
import 'package:pbma11/page/voucher.dart';
=======
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052

class DetailPesanan extends StatefulWidget {
  const DetailPesanan({Key? key}) : super(key: key);

  @override
  State<DetailPesanan> createState() => _DetailPesananState();
}

class _DetailPesananState extends State<DetailPesanan> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF197BFF),
      body: SafeArea(
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(mainAxisSize: MainAxisSize.max, children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'Detail Pesanan',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.61,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(mainAxisSize: MainAxisSize.max, children: [
                    Expanded(
                      child: ListView(
                          padding: EdgeInsets.zero,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 10, 10),
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        padding: EdgeInsets.fromLTRB(7, 0, 5,
                                            10), //apply padding to all four sides
                                        child: Icon(Icons.location_on_rounded)),
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      child: Container(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Alamat Customer \nFalijul Rahma | (+62) 898-4123-5678 \nJalan Panjaitan, Lumajang',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF090F13),
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(10, 0, 0, 0),
                                                child: GestureDetector(
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) => EditProfilAlamat(),
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
                                  ]),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                                width: 300,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ), //apply padding to all four sides
                                child: Text(
                                  'Cuci Basah',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color(0xFF197BFF),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                                width: 300,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ), //apply padding to all four sides
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          'Baju',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Rp.1000',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 126, 122, 122),
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'x30',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 126, 122, 122),
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                                width: 300,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ), //apply padding to all four sides
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          'Celana',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Rp.1000',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 126, 122, 122),
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'x20',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 126, 122, 122),
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                                width: 300,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ), //apply padding to all four sides
                                child: Text(
                                  'Tambahan',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    color: Color(0xFF197BFF),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                                width: 300,
                                height: 70,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ), //apply padding to all four sides
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          'Putih',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Rp.500',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 126, 122, 122),
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'x10',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 126, 122, 122),
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Container(
                                        width: 352,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 10, 0, 0),
                                          child: Row(
<<<<<<< HEAD
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'Opsi Pengiriman',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF197BFF),
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
                                                        builder: (context) => opsiPengiriman(),
                                                      ),
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons.chevron_right_rounded,
                                                    color: Colors.grey,
                                                    size: 40,
=======
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Opsi Pengiriman',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF197BFF),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(100, 0, 0, 0),
                                                  child: GestureDetector(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              opsiPengiriman(),
                                                        ),
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons
                                                          .chevron_right_rounded,
                                                      color: Colors.grey,
                                                      size: 40,
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                                width: 300,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    topRight: Radius.circular(0),
                                  ),
                                ), //apply padding to all four sides
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          'Diantar',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Rp. 5000',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 126, 122, 122),
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Container(
                                        width: 352,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 3, 0, 0),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Voucher',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF197BFF),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(120, 0, 0, 0),
                                                  child: Row(children: [
                                                    Text(
                                                      'Diskon 20%',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: Color.fromARGB(
                                                            255, 126, 122, 122),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ]),
                                                ),
<<<<<<< HEAD
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                child: GestureDetector(
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) => voucher(),
                                                      ),
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons.chevron_right_rounded,
                                                    color: Colors.grey,
                                                    size: 40,
=======
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 0),
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
                                                      Icons
                                                          .chevron_right_rounded,
                                                      color: Colors.grey,
                                                      size: 40,
                                                    ),
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Container(
                                        width: 352,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 3, 0, 0),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Tukar Point',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF197BFF),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(100, 0, 0, 0),
                                                  child: Row(children: [
                                                    Text(
                                                      '[-400]',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: Color.fromARGB(
                                                            255, 126, 122, 122),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ]),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 0),
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
                                                    child: Switch(
                                                      value: isSwitched,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          isSwitched = value;
                                                          print(isSwitched);
                                                        });
                                                      },
                                                      activeTrackColor:
                                                          Colors.grey,
                                                      activeColor:
                                                          Colors.blueGrey,
                                                    ),
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Material(
                                      color: Colors.transparent,
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: Container(
                                        width: 352,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(0),
                                          border: Border.all(
                                            color: Colors.white,
                                            width: 0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20, 3, 0, 0),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Metode pembayaran',
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF197BFF),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 0, 0, 0),
                                                  child: Row(children: [
                                                    Text(
                                                      'Transfer',
                                                      style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        color: Color.fromARGB(
                                                            255, 126, 122, 122),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ]),
                                                ),
<<<<<<< HEAD
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                child: GestureDetector(
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) => metodePembayaran(),
                                                      ),
                                                    );
                                                  },
                                                  child: Icon(
                                                    Icons.chevron_right_rounded,
                                                    color: Colors.grey,
                                                    size: 40,
=======
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 0),
                                                  child: GestureDetector(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (context) =>
                                                              metodePembayaran(),
                                                        ),
                                                      );
                                                    },
                                                    child: Icon(
                                                      Icons
                                                          .chevron_right_rounded,
                                                      color: Colors.grey,
                                                      size: 40,
                                                    ),
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052
                                                  ),
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                  ]),
                            ),
                          ]),
                    ),
                  ]),
                ),
              ),
              // SizedBox(height : 100),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 40, right: 40, top: 5, bottom: 0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.30,
                  // height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: ListView(
                      padding: EdgeInsets.zero,
<<<<<<< HEAD
                      child : Container(
                        padding: EdgeInsets.zero,
                        child : ListView(
                        children: [
                          ListTile(
                            title : Text(
=======
                      // mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // mainAxisAlignment: MainAxisAlignment.end,
                      scrollDirection: Axis.vertical,
                      children: [
                        ListTile(
                          title: Text(
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052
                            'Subtotal items',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
<<<<<<< HEAD

                            trailing : Text(
                              'Rp.50000',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            // dense: false,
=======
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052
                          ),
                          trailing: Text(
                            'Rp.50000',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          dense: true,
                        ),
                        ListTile(
                          title: Text(
                            'Subtotal pengiriman',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: Text(
                            'Rp.14000',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          dense: true,
                        ),
                        ListTile(
                          title: Text(
                            'Tambahan',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: Text(
                            'Rp.5000',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          dense: true,
                        ),
                        ListTile(
                          title: Text(
                            'Voucher',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: Text(
                            'Rp.-11000',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          dense: true,
                        ),
                        ListTile(
                          title: Text(
                            'Total Pembayaran',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
<<<<<<< HEAD
                          Container(
                            padding: const EdgeInsets.all(15),
                            width: 355,
                            height: 72,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) {
                                      return const AntrianWidget();
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
                                "Proses",
                                style: TextStyle(
                                  fontSize: 25, 
                                  fontFamily: "Poppins"
                                ),
                              ),
                            ),
                          ), 
                        ],
                      ),
                    ), 
                    ), 
=======
                          trailing: Text(
                            'Rp.58000',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          dense: true,
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          width: 355,
                          height: 72,
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
                                primary:
                                    const Color.fromARGB(255, 32, 199, 99)),
                            child: const Text(
                              "Prosess coba",
                              style: TextStyle(
                                  fontSize: 25, fontFamily: "Poppins"),
                            ),
                          ),
                        ),
                      ],
                    ),
>>>>>>> 87b4fe4de40c3b53d5dca2061ade113fb3c2a052
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
                          