import 'package:flutter/material.dart';

class CostumTextField extends StatelessWidget {
  final String isi;
  final String judul;
  const CostumTextField({Key? key, required this.judul, required this.isi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(judul,
            style: const TextStyle(
                color: Colors.blue,
                fontFamily: "poppins",
                fontSize: 20,
                fontWeight: FontWeight.w500)),
        const SizedBox(height: 10),
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
            hintText: isi,
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
    );
  }
}