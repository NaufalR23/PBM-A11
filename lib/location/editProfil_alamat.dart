import 'package:flutter/material.dart';
import 'package:pbma11/location/ubahAlamat.dart';
import 'package:pbma11/location/tambah_alamat.dart';

class EditProfilAlamat extends StatelessWidget {
  const EditProfilAlamat({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF197BFF),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SafeArea(
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
                        width: 110,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text("Alamat",
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
                      // child: Row(
                      // // mainAxisSize: MainAxisSize.max,
                      //   children: [
                      //     Expanded(
                      child: ListView(children: [
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(150, 20, 0, 0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TambahAlamat()));
                            },
                            child: const Text("+ Tambah Alamat",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Poppins',
                                    fontSize: 20)),
                          ),
                        ),
                        Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(25, 10, 25, 0),
                            child: Container(
                              height: 200,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25)),
                              child: Column(children: [
                                const Padding(
                                  padding: EdgeInsets.fromLTRB(5, 20, 20, 0),
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 180),
                                    child: Text(
                                      "[Alamat Utama]",
                                      style: TextStyle(
                                          color: Colors.blue,
                                          fontFamily: "poppins",
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Row(
                                    children: [
                                      const Text("Falijul Rahma",
                                          style: TextStyle(
                                            fontSize: 23,
                                            color: Colors.black,
                                            fontFamily: "poppins",
                                            fontWeight: FontWeight.bold,
                                          )),
                                      const SizedBox(
                                        width: 100,
                                      ),
                                      TextButton(
                                          style: TextButton.styleFrom(
                                              backgroundColor: Color.fromARGB(
                                                  255, 32, 199, 99),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              )),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const UbahAlamat()),
                                            );
                                          },
                                          child: const Text(
                                            "Ubah",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white,
                                              fontFamily: "poppins",
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                  child: Row(
                                    children: const [
                                      Text('(+62) 898-4123-5678 ',
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontFamily: "poppins",
                                          )),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Row(
                                    children: const [
                                      Text(
                                          'Jalan Panjaitan Gg Luntas RT.04 RW.11 \nKab. Lumajang, Jawa Timur, ID 67312',
                                          style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.black,
                                            fontFamily: "poppins",
                                          )),
                                    ],
                                  ),
                                ),
                              ]),
                            )),
                        // child : Padding(
                        //     padding: const EdgeInsets.all(20.0),
                        //     child: Container(
                        //         height: 140,
                        //         decoration: BoxDecoration(
                        //             color: Colors.white,
                        //             borderRadius: BorderRadius.circular(25)),
                        //         child: Column(children: [
                        //           const SizedBox(
                        //             height: 20,
                        //           ),
                        //           Padding(
                        //             padding: const EdgeInsets.only(left: 20),
                        //             child: Row(
                        //               children: [
                        //                 const Text(
                        //                     'Lumajang',
                        //                     style: TextStyle(
                        //                       fontSize: 14,
                        //                       color: Colors.black,
                        //                       fontFamily: "poppins",
                        //                     )),
                        //                 const SizedBox(
                        //                   width: 30,
                        //                 ),
                        //                 TextButton(
                        //                     style: TextButton.styleFrom(
                        //                         backgroundColor:
                        //                             const Color(0xffC4C4C4),
                        //                         shape: RoundedRectangleBorder(
                        //                           borderRadius:
                        //                               BorderRadius.circular(10),
                        //                         )),
                        //                     onPressed: () {},
                        //                     child: const Text(
                        //                       "Ubah",
                        //                       style: TextStyle(
                        //                         fontSize: 14,
                        //                         color: Colors.black,
                        //                         fontFamily: "poppins",
                        //                       ),
                        //                     ))
                        //               ],
                        //             ),
                        //           ),
                        //         Padding(
                        //           padding: const EdgeInsets.only(left: 20),
                        //           child: Row(
                        //             children: const [
                        //               Text('Lumajang',
                        //                   style: TextStyle(
                        //                     fontSize: 14,
                        //                     color: Colors.black,
                        //                     fontFamily: "poppins",
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        // ),
                        // ]
                        // ),
                        // ),
                        // ),
                        // ),
                        // ]
                        // ),
                        // ),
                      ]),
                    ),
                  ),
                ]),
              ),
            ),
          ),
        ));
  }
}
