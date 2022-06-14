import 'package:flutter/material.dart';
import 'package:pbma11/home.dart';
import 'package:pbma11/page/Tambahan.dart';

class DetailPesanan extends StatefulWidget {
  const DetailPesanan({Key? key}) : super(key: key);

  @override
  State<DetailPesanan> createState() => _DetailPesananState();
}

class _DetailPesananState extends State<DetailPesanan> {
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
                  '\nDetail Pesanan',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Container(
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
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 20, 10,
                                    10), //apply padding to all four sides

                                child: Row(
                                  children: [
                                    Container(
                                        padding: EdgeInsets.fromLTRB(10, 20, 10,
                                            10), //apply padding to all four sides
                                        child: Icon(Icons.location_on_rounded)),
                                    Container(
                                      child: Text(
                                        'Alamat Customer \nFalijul Rahma | (+62) 898-4123-5678 \nJalan Panjaitan, Lumajang',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Poppins',
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          'Cuci Basah',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:
                                                Color.fromARGB(255, 8, 0, 255),
                                            fontSize: 15,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Baju \nRp.1000',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
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
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          'Tambahan',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:
                                                Color.fromARGB(255, 8, 0, 255),
                                            fontSize: 15,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Putih \nRp.1000',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
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
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          'Opsi Pengiriman',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:
                                                Color.fromARGB(255, 8, 0, 255),
                                            fontSize: 15,
                                          ),
                                        ),
                                        subtitle: Text(
                                          'Dijemput dan diantar',
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Rp. 14.000',
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                    Container(
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(Icons.arrow_forward_ios),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          'Voucher',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:
                                                Color.fromARGB(255, 8, 0, 255),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Diskon 20%',
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                    Container(
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(Icons.arrow_forward_ios),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          'Tukar Point',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:
                                                Color.fromARGB(255, 8, 0, 255),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '[-400]',
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                    Container(
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(Icons.switch_left),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: Text(
                                          'Metode Pembayaran',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            color:
                                                Color.fromARGB(255, 8, 0, 255),
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'transfer',
                                        textAlign: TextAlign.right,
                                      ),
                                    ),
                                    Container(
                                      child: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(Icons.arrow_forward_ios),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                                color: Colors.white,
                                child: Row(children: [
                                  Expanded(
                                    child: Text(
                                      'Subtotal Items\nSubtotal Pengiriman\nTambahan\nVoucher\nTotal Pembayaran',
                                      style: TextStyle(fontSize: 17),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Rp.20.000\nRp.14.000\nRp.5.000\nRp.-11.000\nRp.58.000',
                                      style: TextStyle(fontSize: 17),
                                      textAlign: TextAlign.right,
                                    ),
                                  )
                                ]),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(40, 0, 40, 50),
                                width: 50,
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
                                          return const HomeWidget();
                                        },
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Proses",
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
