import 'package:flutter/material.dart';

class Scanqr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffC0226D),
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                  SizedBox(width:125,),
                  Text("scan QR Qode",style: TextStyle(color: Colors.white,fontSize: 25),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 350,
              height: 400,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.all(Radius.circular(15)),
               boxShadow: [
                BoxShadow(
                            color: Colors.grey.shade500,
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                            offset: Offset(4.0, 4.0)
                          ),
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                            offset: Offset(-4.0, -4.0)
                          )
               ]
             ),
             child: Image(image: AssetImage("image/QR_code_for_mobile_English_Wikipedia.svg.webp")),
            ),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person),
                Text("Sinta",style: TextStyle(color: Colors.grey,fontSize: 15),),
              ],
            ),
           Container(
        width: double.infinity,
        height: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                            color: Colors.grey,
                            blurRadius: 15.0,
                            spreadRadius: 1.0,
                            offset: Offset(-4.0, -4.0)
                          )
          ]
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("Point Anda : 4",style: TextStyle(color: Colors.grey,fontSize: 20),),
              Text("Dapatkan Reward gratis transaksi dengan mengumpulkan 10 Point,Ayo Pesan dan dapatkan Point nya",
              style: TextStyle(color: Colors.grey,fontSize: 20),
              textAlign: TextAlign.justify,),
              
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
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
                      child: Center(child: Text("Beranda",style: TextStyle(color: Colors.white,fontSize: 20),)),
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
                      child: Center(child: Text("Keranjang",style: TextStyle(color: Colors.white,fontSize: 20),)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
            
          ],
        ),
      )
      );
  }
}