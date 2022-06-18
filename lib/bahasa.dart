import 'package:flutter/material.dart';

class BahasaWidget extends StatelessWidget {
  const BahasaWidget({Key? key}) : super(key: key);

  static const String _title = 'Pilihan Bahasa';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const RadioButton(),
      ),
    );
  }
}

enum Bahasa { Indonesia, English }

class RadioButton extends StatefulWidget {
  const RadioButton({Key? key}) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  Bahasa? _character = Bahasa.Indonesia;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsetsDirectional.fromSTEB(10, 20, 140, 20),
          child: Text(
            'Bahasa yang dipilih:',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        RadioListTile<Bahasa>(
          title: const Text('Indonesia'),
          value: Bahasa.Indonesia,
          groupValue: _character,
          onChanged: (Bahasa? value) {
            setState(() {
              _character = value;
            });
          },
        ),
        RadioListTile<Bahasa>(
          title: const Text('English'),
          value: Bahasa.English,
          groupValue: _character,
          onChanged: (Bahasa? value) {
            setState(() {
              _character = value;
            });
          },
        ),
      ],
    );
  }
}
