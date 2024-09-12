import 'package:flutter/material.dart';

class Pebe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Pembayaran Anda Berhasil"),
            Text("Rp 50.000"),
            Text("Terima Kasih"),
            Text("No.Pesanan Anda"),
            Text("ADF67890GJ"),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/halamanprofil");
              },
              child: Container(
                width: 151,
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0xffC0226D),
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Center(child: Text("Beranda",style: TextStyle(color: Colors.white,fontSize: 15),)),
              ),
            ),
            SizedBox(width: 5,),
             GestureDetector(
              onTap: (){},
              child: Container(
                width: 151,
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0xffC0226D),
                  borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                child: Center(child: Text("Keranjang",style: TextStyle(color: Colors.white,fontSize: 15),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}