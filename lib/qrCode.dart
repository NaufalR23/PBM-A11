import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRCode extends StatefulWidget {
  @override
  _QRCodeState createState() => new _QRCodeState();
}

class _QRCodeState extends State<QRCode> {
  final GlobalKey qrKey = GlobalKey();
  String barcode = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Barcode Scanner Example'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: QRView(
                key: qrKey,
                onQRViewCreated: (controller) {
                  controller.scannedDataStream.listen((value) {
                    setState(() {});
                  });
                },
              ),
            ),
            Expanded(
              child: Center(
                child: Text('Result: $barcode'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
