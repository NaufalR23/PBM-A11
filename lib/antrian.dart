import 'package:pbma11/bottomnavigator.dart';

import 'package:flutter/material.dart';

class antrian extends StatelessWidget {
  const antrian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: <Widget>[
                Tab(
                  text: "Antrian",
                ),
                Tab(
                  text: "Diproses",
                ),
                Tab(
                  text: "Selesai",
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ListTile(
                title: Text('Falijul Rahma | (+62) 898-41235678'),
                subtitle: Text('''
3 Baju | 2 Celana | 1 Putih
Rpxxxxxx'''),
                isThreeLine: true,
                trailing: Text(
                  '''
Deadline : Jumat, 13/03/2022
Nota : 123456789
Menunggu Pembayaran''',
                  textScaleFactor: 0.8,
                ),
              ),
              Center(
                child: Text("Isi halaman tab 2"),
              ),
              Center(
                child: Text("Isi halaman tab 3"),
              ),
            ],
          ),
        ));
  }
}
