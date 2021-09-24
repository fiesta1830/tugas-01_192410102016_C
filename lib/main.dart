// @dart=2.9
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:sort/sort.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var contact = [
    {
      "name": "Widya Setia Ningrum",
      "handphone": "081241567821",
      "email": "widyasetya01@gmail.com",
      "photo": "images/widya.jpg",
    },
    {
      "name": "Dhia Hayyu Shahira",
      "handphone": "085428389121",
      "email": "hira110@gmail.com",
      "photo": "images/hira.jpg",
    },
    {
      "name": "Fiesta Putra Reifa Al Ghifar",
      "handphone": "081246841187",
      "email": "fiestaputra@gmail.com",
      "photo": "images/fiesta.jpg",
    },
    {
      "name": "Deska Dwi Zahrotun Nisa",
      "handphone": "082331841702",
      "email": "deskadwi@gmail.com",
      "photo": "images/deska.jpg",
    },
    {
      "name": "Yola Kristina Cendani",
      "handphone": "081467829102",
      "email": "yola209@gmail.com",
      "photo": "images/yola.jpg",
    },
    {
      "name": "Tri Kurnia",
      "handphone": "085829301202",
      "email": "trikurnia@gmail.com",
      "photo": "images/nia.jpg",
    },
    {
      "name": "Muhammad Muhtadin Nurilhaq",
      "handphone": "08218452871",
      "email": "adinextension@gmail.com",
      "photo": "images/muhtadin.jpg",
    },
    {
      "name": "Nur Wahyu Gosi Hidayat",
      "handphone": "082840201842 ",
      "email": "gosi16@gmail.com",
      "photo": "images/gosi.jpg",
    },
    {
      "name": "Naufal Zakly Santoso",
      "handphone": "084729103892",
      "email": "naufal56@gmail.com",
      "photo": "images/noval.jpg",
    },
    {
      "name": "Muhammad Riyadh Azhar",
      "handphone": "082124958728",
      "email": "arap20@gmail.com",
      "photo": "images/arap.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    contact.simpleSort(sortBy: "name");

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "List Contact Phone",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.yellow.shade400,
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                color: Colors.yellowAccent,
                child: Card(
                  color: Colors.black,
                  child: ListTile(
                      title: Text(contact.elementAt(index).values.elementAt(0),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        contact.elementAt(index).values.elementAt(1) +
                            ' | ' +
                            contact.elementAt(index).values.elementAt(2),
                        style: TextStyle(color: Colors.white54),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(
                            contact.elementAt(index).values.elementAt(3)),
                      )),
                ),
              );
            },
            itemCount: contact.length,
          ),
        ));
  }
}
