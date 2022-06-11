import 'package:flutter/material.dart';
import 'package:pbma11/utils/fade_animation.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  // final scaffoldKey = GlobalKey<ScaffoldState>();
  Map<String, Map<String, int>> order = {
    'Baju': {'price': 1000, 'total': 0},
    'Celana': {'price': 1000, 'total': 0},
    'Jaket': {'price': 2000, 'total': 0},
    'Dress': {'price': 3000, 'total': 0},
    'Mukenah': {'price': 3000, 'total': 0},
    'Selimut': {'price': 3000, 'total': 0}
  };

  @override
  Widget build(BuildContext context) {
    Widget option(
        {String? image, String? name, int? price, String? type, int? delay}) {
      return FadeAnimation(
        delay: delay,
        child: Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/$image',
                  width: 48,
                ),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name!,
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w700)),
                    const SizedBox(
                      height: 2,
                    ),
                    Text('\$$price',
                        style: GoogleFonts.poppins(
                            color: Colors.pink, fontWeight: FontWeight.w600))
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (order[type]!['total'] != 0) {
                        order[type]!['total'] = order[type]!['total']! - 1;
                      }
                    });
                  },
                  child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300, shape: BoxShape.circle),
                      child: Center(
                          child: Icon(
                        Icons.remove,
                        size: 16,
                        color: Colors.grey.shade800,
                      ))),
                ),
                const SizedBox(
                  width: 8,
                ),
                SizedBox(
                  width: 24,
                  child: Center(
                    child: Text('${order[type]!['total']}',
                        style: GoogleFonts.inter(fontWeight: FontWeight.w700)),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      order[type]!['total'] = order[type]!['total']! + 1;
                    });
                  },
                  child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300, shape: BoxShape.circle),
                      child: Center(
                          child: Icon(
                        Icons.add,
                        size: 16,
                        color: Colors.grey.shade800,
                      ))),
                ),
              ],
            )),
      );
    }

    return Scaffold(
        backgroundColor: const Color(0xffF1F1F1),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text('Add Details',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black)),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                option(
                    image: 'baju.png',
                    name: 'Baju',
                    price: 1000,
                    type: 'baju',
                    delay: 150),
                option(
                    image: 'trousers.png',
                    name: 'Celana',
                    price: 1000,
                    type: 'trousers',
                    delay: 300),
                option(
                    image: 'jacket.png',
                    name: 'Jaket',
                    price: 2000,
                    type: 'jaket',
                    delay: 450),
                option(
                    image: 'dress.png',
                    name: 'Dress',
                    price: 3000,
                    type: 'dress',
                    delay: 600),
                option(
                    image: 'mukenah.png',
                    name: 'Mukenah',
                    price: 3000,
                    type: 'mukenah',
                    delay: 750),
                option(
                    image: 'blanket.png',
                    name: 'Selimut',
                    price: 2,
                    type: 'blanket',
                    delay: 900),
                // FadeAnimation(
                //   delay: 900,
                //   child: Text('Total Price \$$totalPrice',
                //       style: GoogleFonts.inter(
                //           fontSize: 24,
                //           fontWeight: FontWeight.w700,
                //           color: Colors.black)),
                // )
              ],
            ),
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/picktime');
          },
          child: FadeAnimation(
            delay: 1200,
            child: Container(
              height: 60,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text('Done',
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ),
              ),
            ),
          ),
        ));
  }
}