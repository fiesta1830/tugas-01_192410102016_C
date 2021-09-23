import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Daftar Pemain Bola',
          style: GoogleFonts.raleway(
              fontSize: 24,
              color: Colors.lightBlue,
              fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(
              height: 30,
            ),
            BoxPemain(4, 'assets/icardi.png', 'Mauro Icardi', 'Argentina',
                'Paris Saint-Germain F.C'),
            SizedBox(
              height: 30,
            ),
            BoxPemain(3, 'assets/muller.png', 'Thomas Müller', 'Germany',
                'FC Bayer Munich'),
            SizedBox(
              height: 30,
            ),
            BoxPemain(4, 'assets/chiesa.png', 'Federico Chiesa', 'Italia',
                'Juventus F.C.'),
            SizedBox(
              height: 30,
            ),
            BoxPemain(3, 'assets/vinicius.png', 'Vinícius JR', 'Brazil',
                ' Real Madrid'),
            SizedBox(
              height: 30,
            ),
            BoxPemain(5, 'assets/lukaku.png', 'Romelu Lukaku', 'Belgium',
                'Chelsea F.C.'),
            SizedBox(
              height: 30,
            ),
            BoxPemain(4, 'assets/icardi.png', 'Mauro Icardi', 'Argentina',
                'Paris Saint-Germain F.C'),
            SizedBox(
              height: 30,
            ),
            BoxPemain(3, 'assets/muller.png', 'Thomas Müller', 'Germany',
                'FC Bayer Munich'),
            SizedBox(
              height: 30,
            ),
            BoxPemain(4, 'assets/chiesa.png', 'Federico Chiesa', 'Italia',
                'Juventus F.C.'),
            SizedBox(
              height: 30,
            ),
            BoxPemain(3, 'assets/vinicius.png', 'Vinícius JR', 'Brazil',
                ' Real Madrid'),
            SizedBox(
              height: 30,
            ),
            BoxPemain(5, 'assets/lukaku.png', 'Romelu Lukaku', 'Belgium',
                'Chelsea F.C.'),
          ],
        ),
      ),
    );
  }
}

class BoxPemain extends StatelessWidget {
  final String nama;
  final int bintang;
  final String gambar;
  final String negaraAsal;
  final String club;

  BoxPemain(this.bintang, this.gambar, this.nama, this.negaraAsal, this.club);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.black38,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 100,
              height: 100,
              child: Image.asset(
                gambar,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                nama,
                style: GoogleFonts.raleway(fontSize: 15, color: Colors.white),
              ),
              SizedBox(
                height: 2.30,
              ),
              Text(
                negaraAsal,
                style: GoogleFonts.raleway(fontSize: 13, color: Colors.yellow),
              ),
              Text(
                club,
                style: GoogleFonts.raleway(
                    fontSize: 11, color: Colors.lightBlue[100]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  for (var i = 0; i < bintang; i++)
                    Icon(
                      Icons.star_sharp,
                      color: Colors.yellow,
                    )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
