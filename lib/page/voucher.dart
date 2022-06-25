import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pbma11/page/DetailPesananNew.dart';

class voucher extends StatefulWidget {
  @override
  _voucherState createState() => _voucherState();
}

class _voucherState extends State<voucher> {
  var list_item = [];

  void initState() {
    super.initState();
    getDataVoucher();
  }

  getDataVoucher() {
    var colPesanan = FirebaseFirestore.instance.collection('voucher');
    colPesanan.get().then((value) {
      setState(() {
        list_item = value.docs.map((e) {
          return {
            'nama': e['nama'],
            'tagline': e['tagline'],
            'gambar': e['gambar'],
          };
        }).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final sizeHeight = MediaQuery.of(context).size.height;
    final sizeWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xFF197BFF),
        body: SafeArea(
          child: SafeArea(
            child: SingleChildScrollView(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
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
                        width: 100,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text("Voucher",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                fontSize: 25)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.8688,
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
                        children: [
                          Expanded(
                            child: ListView.builder(
                                itemCount: list_item.length,
                                itemBuilder: (_, int index) {
                                  var item = list_item[index];
                                  return Container(
                                    padding: EdgeInsets.only(
                                        top: 15,
                                        left: sizeWidth * 0.05,
                                        right: sizeWidth * 0.05),
                                    child: Container(
                                      width: sizeWidth * 0.9,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8.0))),
                                        child: InkWell(
                                          onTap: () {},
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment
                                                    .stretch, // add this
                                            children: <Widget>[
                                              ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8.0)),
                                                child: Image.network(
                                                    "${item['gambar']}.png",
                                                    // width: 300,
                                                    height: sizeHeight * 0.15,
                                                    fit: BoxFit.cover),
                                              ),
                                              ListTile(
                                                title: Text(
                                                  item['nama'],
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                subtitle: Text(
                                                  item['tagline'],
                                                  style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      color: Color.fromARGB(
                                                          255, 94, 194, 240)),
                                                ),
                                                trailing: ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          builder: (_) {
                                                            return DetailPesanan();
                                                          },
                                                        ),
                                                      );
                                                    },
                                                    child: Text("Pilih")),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}
