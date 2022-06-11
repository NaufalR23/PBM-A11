import 'package:flutter/material.dart';
import 'package:pbma11/page/detailPesanan.dart';

// class OrderPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: orderPage(),
//     );
//   }
// }
class TambahDetail extends StatefulWidget {
  @override
  _TambahDetailState createState() => _TambahDetailState();
}

class _TambahDetailState extends State<TambahDetail> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  get headingStyle => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color.fromARGB(255, 15, 130, 255),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child : Text(
                'Tambah Detail',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
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
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            clothWidget("baju", "Baju", 1000),
                            clothWidget("trousers", "Celana", 1000),
                            clothWidget("jacket", "Jaket", 2000),
                            clothWidget("dress", "Dress", 3000),
                            clothWidget("mukenah", "Mukenah", 3000),
                            clothWidget("blanket", "Selimut", 3000),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailPesanan()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: 70,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text("Selesai", 
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w700
                            ),
                          ),
                        )
                      ),
                    ),
                  SizedBox(height: 20,)
                ]
              ),
            ),
          ),
        ]
      ),
    ),
  );
}
  Container clothWidget(String img, String name, int price)
  {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
      width: MediaQuery.of(context).size.width*0.85,
      child: Column(
        children: [
          Container(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.85,
                  height: 70,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage('assets/images/$img.png')
                      )
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$name", 
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.black,
                      fontSize: 18,
                    ),),
                    Text("Rp.$price", 
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                    
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Text("-", 
                        style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      child: Center(
                        child: Text("0", 
                        style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: Center(
                        child: Text("+", 
                        style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.black,
                        fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Container(
          //       height: 1,
          //       width: MediaQuery.of(context).size.width*0.75,
          //       color: Colors.grey,
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
  Column categoryWidget(String img, String name, bool isActive)
  {
    return Column(
      children: [
        Material(
          color: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          // height: 70,
          // width: 70,
          // decoration: BoxDecoration(
          //   color: Colors.black,
          //   shape: BoxShape.circle,
          // ),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                // border: Border.all(
                //   color: Colors.white,
                //   width: 0,
                  image: DecorationImage(
                      image: AssetImage('assets/images/$img.png'),
                      fit: BoxFit.contain
                  ),
                )
              ),
            ),
          ),
        // ),
        Text(name, style: headingStyle)
      ],
    );
  }
}
