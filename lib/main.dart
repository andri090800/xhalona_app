import 'package:flutter/material.dart';
import 'package:xhalon_app/HalamanProfil.dart';
import 'package:xhalon_app/PengaturanAkun.dart';
import 'package:xhalon_app/Settingprofil.dart';
import 'package:xhalon_app/Keranjang.dart';
import 'package:xhalon_app/boking.dart';
import 'package:xhalon_app/alamat.dart';
import 'package:xhalon_app/checkout.dart';
import 'package:xhalon_app/detailproduk.dart';
import 'package:xhalon_app/metodepembayaran.dart';
import 'package:xhalon_app/Pebe.dart';
import 'package:xhalon_app/rincianpesanan.dart';
import 'package:xhalon_app/scanqr.dart';




void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/pengaturanakun',
      routes: {
        '/pengaturanakun' : (context) => Pengaturanakun(),
        '/halamanprofil' : (context) => halamanprofil(),
        '/settingprofil' : (context) => Settingprofil(),
        '/keranjang' : (context) => Keranjang(),
        '/boking' : (context) => Boking(),
        '/alamat' : (context) => Alamat(),
        '/checkout' : (context) => Checkout(),
        '/mepe' : (context) => Mepe(),
         '/pebe' : (context) => Pebe(),
         '/depa' : (context) => DetailProduk(),
         '/rincian' : (context) => Rincianpesanan(),
         '/scan' : (context) => Scanqr(),

      },
    );
  } 
}    