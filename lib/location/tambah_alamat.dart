import 'package:flutter/material.dart';
import 'package:pbma11/Model/costum_button.dart';
import 'package:pbma11/location/location_provider.dart';
import 'package:pbma11/location/lokasi_terkini.dart';
import 'package:provider/provider.dart';

class TambahAlamat extends StatelessWidget {
  const TambahAlamat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LocationProvider>(context, listen: true);
    return Scaffold(
      backgroundColor: Color(0xFF197BFF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
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
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text("Tambah Alamat",
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
                  child : Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height*0.8688,
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(25, 25, 25, 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Kontak",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: "Poppins",
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Container(
                              child : TextField(
                                style: const TextStyle(fontFamily: "Poppins", fontSize: 15),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  hintText: 'Nama Lengkap',
                                  border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(25, 2, 25, 25),
                          child: Column(
                            children: [
                            TextField(
                              style: const TextStyle(fontFamily: "Poppins", fontSize: 15),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                hintText: 'No Telepon',
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  "Alamat",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontFamily: "Poppins",
                                    fontSize: 25,
                                    ),
                                  ),
                                ),
                              ]
                            ),
                          ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(25, 2, 25, 0),
                          child: Column(
                            children: [
                              TextField(
                                style: const TextStyle(fontFamily: "Poppins", fontSize: 15),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                  ),
                                  hintText: 'Nama jalan,Gedung,Kabupaten',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              ElevatedButton(
                                  onPressed: () {
                                    provider.getLocation();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const LokasiSaatIni()));
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors.white),
                                      shape:
                                          MaterialStateProperty.all(RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ))),
                                  child: SizedBox(
                                    height: 65,
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.location_on_outlined,
                                          color: Color.fromARGB(255, 250, 4, 4),
                                        ),
                                        Text(
                                          'Gunakan Lokasi Saat Ini',
                                          style: TextStyle(
                                              color: Color(0xff8E8E8E),
                                              fontFamily: "Poppins",
                                              fontSize: 14),
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          ),
                        ),
                        const SizedBox(height: 350),
                        CustomButton(
                          inputText: 'Simpan',
                          onPressed: () {},
                          color: Color.fromARGB(255, 32, 199, 99),
                          textcolor: Colors.white,
                        ),
                      ]
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