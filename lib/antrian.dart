import 'package:flutter/material.dart';

class AntrianWidget extends StatefulWidget {
  const AntrianWidget({Key? key}) : super(key: key);

  @override
  _AntrianWidgetState createState() => _AntrianWidgetState();
}

class _AntrianWidgetState extends State<AntrianWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color.fromARGB(255, 15, 130, 255),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 26, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: Container(
                        width: 60,
                        height: 60,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/profil.png',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Falijul Rahma',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Container(
                  width: 430,
                  height: 609.22,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 2, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: DefaultTabController(
                            length: 3,
                            initialIndex: 0,
                            child: Column(
                              children: [
                                TabBar(
                                  labelColor: Color(0xFF2D1DED),
                                  unselectedLabelColor: Colors.black,
                                  indicatorColor: Color(0xFF2D1DED),
                                  tabs: [
                                    Tab(
                                      text: 'Antrian',
                                    ),
                                    Tab(
                                      text: 'Diproses',
                                    ),
                                    Tab(
                                      text: 'Selesai',
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      ListView(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          ListTile(
                                            title: Text(
                                              'Falijul Rahma | (+62) 898-4123-5678\nRp58000',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: Text(
                                              '3 Baju | 2 Celana\n1 Putih\nNota : 1234567890',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 11,
                                              ),
                                            ),
                                            trailing: Text(
                                              'Deadline : Jumat, 11/03/2022\nMENUNGGU PEMBAYARAN',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                color: Colors.red,
                                              ),
                                            ),
                                            dense: false,
                                          ),
                                          ListTile(
                                            title: Text(
                                              'Falijul Rahma | (+62) 898-4123-5678\nRp58000',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: Text(
                                              '3 Baju | 2 Celana\n1 Putih\nNota : 1234567890',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 11,
                                              ),
                                            ),
                                            trailing: Text(
                                              'Deadline : Jumat, 11/03/2022\nMENUNGGU PEMBAYARAN',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                color: Colors.red,
                                              ),
                                            ),
                                            dense: false,
                                          ),
                                          ListTile(
                                            title: Text(
                                              'Falijul Rahma | (+62) 898-4123-5678\nRp58000',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: Text(
                                              '3 Baju | 2 Celana\n1 Putih\nNota : 1234567890',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 11,
                                              ),
                                            ),
                                            trailing: Text(
                                              'Deadline : Jumat, 11/03/2022\nMENUNGGU PEMBAYARAN',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                color: Colors.red,
                                              ),
                                            ),
                                            dense: false,
                                          ),
                                        ],
                                      ),
                                      ListView(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          ListTile(
                                            title: Text(
                                              'Falijul Rahma | (+62) 898-4123-5678\nRp58000',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: Text(
                                              '3 Baju | 2 Celana\n1 Putih\nNota : 1234567890',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 11,
                                              ),
                                            ),
                                            trailing: Text(
                                              'Deadline : Jumat, 11/03/2022\nSEDANG DIPROSES',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                color: Colors.red,
                                              ),
                                            ),
                                            dense: false,
                                          ),
                                          ListTile(
                                            title: Text(
                                              'Falijul Rahma | (+62) 898-4123-5678\nRp58000',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: Text(
                                              '3 Baju | 2 Celana\n1 Putih\nNota : 1234567890',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 11,
                                              ),
                                            ),
                                            trailing: Text(
                                              'Deadline : Jumat, 11/03/2022\nSEDANG DIPROSES',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                color: Colors.red,
                                              ),
                                            ),
                                            dense: false,
                                          ),
                                        ],
                                      ),
                                      ListView(
                                        padding: EdgeInsets.zero,
                                        scrollDirection: Axis.vertical,
                                        children: [
                                          ListTile(
                                            title: Text(
                                              'Falijul Rahma | (+62) 898-4123-5678\nRp58000',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: Text(
                                              '3 Baju | 2 Celana\n1 Putih\nNota : 1234567890',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 11,
                                              ),
                                            ),
                                            trailing: Text(
                                              'Deadline : Jumat, 11/03/2022\nSELESAI',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                color: Colors.red,
                                              ),
                                            ),
                                            dense: false,
                                          ),
                                          ListTile(
                                            title: Text(
                                              'Falijul Rahma | (+62) 898-4123-5678\nRp58000',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: Text(
                                              '3 Baju | 2 Celana\n1 Putih\nNota : 1234567890',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 11,
                                              ),
                                            ),
                                            trailing: Text(
                                              'Deadline : Jumat, 11/03/2022\nSELESAI',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                color: Colors.red,
                                              ),
                                            ),
                                            dense: false,
                                          ),
                                          ListTile(
                                            title: Text(
                                              'Falijul Rahma | (+62) 898-4123-5678\nRp58000',
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            subtitle: Text(
                                              '3 Baju | 2 Celana\n1 Putih\nNota : 1234567890',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 11,
                                              ),
                                            ),
                                            trailing: Text(
                                              'Deadline : Jumat, 11/03/2022\nSELESAI',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 10,
                                                color: Colors.red,
                                              ),
                                            ),
                                            dense: false,
                                          ),
                                        ],
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
            ],
          ),
        ),
      ),
    );
  }
}
