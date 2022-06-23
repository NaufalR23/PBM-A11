// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pbma11/Model/costum_button.dart';
import 'package:pbma11/Model/costum_textfield.dart';

class UbahAlamat extends StatelessWidget {
  const UbahAlamat({Key? key}) : super(key: key);
//
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
                      width: 70,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text("Ubah Alamat",
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
                          padding: EdgeInsetsDirectional.fromSTEB(25, 0 , 25, 0),
                          child: Column(
                            children: [
                              SizedBox(height: 10),
                              const CostumTextField(
                                  judul: 'Nama', isi: 'Nama Lengkap'),
                              const SizedBox(height: 10),
                              const CostumTextField(
                                  judul: 'Kontak', isi: 'No Telepon'),
                              const SizedBox(height: 10),
                              const CostumTextField(
                                  judul: 'Alamat', isi: 'Masukkan Alamat'),
                              const SizedBox(height: 10),
                              const CostumTextField(
                                  judul: 'Kabupaten',
                                  isi: 'Masukkan Kota atau Kecamatan'),
                              const SizedBox(height: 10),
                              const CostumTextField(
                                  judul: 'Kode Pos', isi: 'Masukkan Kode Pos'),
                              const SizedBox(height: 30),
                              CustomButton(
                                inputText: 'Simpan',
                                onPressed: () {
                                Navigator.pop(context);
                              },
                                color: Color.fromARGB(255, 32, 199, 99),
                                textcolor: Colors.white,
                              ),
                              SizedBox(height: 10),
                            CustomButton(
                              inputText: 'Hapus Alamat',
                              onPressed: () {},
                               color: Color.fromARGB(255, 32, 199, 99),
                                textcolor: Colors.white,),
                            ]
                          ),
                        ),
                      ]
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}