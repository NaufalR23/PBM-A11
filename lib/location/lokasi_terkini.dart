import 'package:flutter/material.dart';
import 'package:pbma11/Model/costum_button.dart';
import 'package:pbma11/location/alamat.dart';

class LokasiSaatIni extends StatefulWidget {
  const LokasiSaatIni({Key? key}) : super(key: key);

  @override
  State<LokasiSaatIni> createState() => _LokasiSaatIniState();
}

class _LokasiSaatIniState extends State<LokasiSaatIni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(
                      width: 00090,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text("Cari Lokasi",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          fontSize: 25)),
                    ),
                  ],
                ),
                const Alamat(),
                SizedBox(height: 10),
                CustomButton(
                  inputText: 'Simpan',
                  onPressed: () {},
                  color: Colors.green,
                  textcolor: Colors.white,
                ),
          ],
        )),
      ),
      ),
    );
  }
}