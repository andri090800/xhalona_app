import 'package:flutter/material.dart';

class Rincianpesanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, "/keranjang");
        }, icon: Icon(Icons.arrow_back,color: Color(0xffC0226D),)),
        title: Text("Rincian Pesanan"),
        centerTitle: false,
        bottom: PreferredSize(preferredSize: Size.fromHeight(5), child: Divider(thickness: 2,)),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: Color(0xffC0226D),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffC0226D),
                      offset: const Offset(8.0, 8.0),
                      blurRadius: 20,
                      spreadRadius: 1.0
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: const Offset(-8.0, -8.0),
                      blurRadius: 20,
                      spreadRadius: 1.0
                    ),
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Text("Pesanan dalam Proses",style: TextStyle(fontSize: 10,color: Colors.white),),
                    Text("Terima Kasih Telah Memesan Di Xhalona APP",style: TextStyle(fontSize: 10,color: Colors.white),),
                    
                  ],),
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset("image/boardcheck.png"),
                    SizedBox(width: 5,),
                    Text("Informasi Pesanan"),
                    Spacer(),
                    TextButton(onPressed: (){}, child: Text("Lihat",style: TextStyle(color: Color(0xffC0226D)),))
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(width: 15,),
                  Image.asset("image/radio.png"),             
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(onPressed: (){}, child: Text("Ganti Jadwal",style:TextStyle(color: Color(0xffC0226D)),)),
                      Text("12-12-2024",style: TextStyle(fontSize: 10),)
                    ],
                  )
                ],
              ),
              Divider(color: Colors.grey,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("image/lokasipin.png"),
                        SizedBox(width: 5,),
                        Text("Alamat Pemesanan"),
                        Spacer(),
                        TextButton(onPressed: (){}, child: Text("Ubah",style: TextStyle(color: Color(0xffC0226D)),))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ifan"),
                         Text("(62+)82216206676"),
                         Text("jl.Kapten Jamhur"),
                      ],
                    ),
                  ),
                 
                ],
              ),
              Divider(color: Colors.grey,thickness: 5,),
              ListTile(onTap: (){},title: Text("Salon Jhoni"),trailing: Text("Kunjungi Salon >"),),
              Divider(color: Colors.grey,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("image/cukur.png"),
                    SizedBox(width: 5,),
                    Text("Catok",style: TextStyle(fontSize: 20),),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 50,),
                        Text("x1"),
                        Text("Rp 50.000",style: TextStyle(color:Color(0xffC0226D) ),)
                      ],
                    )  
                  ],
                ),
              ),
            ],
          ),
          Divider(color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Total Pesanan"),
                Spacer(),
                Text("Rp 50.000",style: TextStyle(color:Color(0xffC0226D)))
              ],
            ),
          ),
          Divider(color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Faktur"),
                Spacer(),
                Text("Lihat",style: TextStyle(color:Color(0xffC0226D)))
              ],
            ),
          ),
          Divider(color: Colors.grey,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Metode Pemesanan"),
                Spacer(),
                Text("Datang Ke Salon",style: TextStyle(color:Color(0xffC0226D)))
              ],
            ),
          ),
          Divider(color: Colors.grey,thickness: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Metode Pembayaran"),
                Spacer(),
                Text("Transfer Bank-Mandiri VA",style: TextStyle(color:Colors.grey))
              ],
            ),
          ),
          Divider(color: Colors.grey,thickness: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Waktu Pemesanan"),
                Spacer(),
                Text("12-12-2024  11.00",style: TextStyle(color:Colors.grey))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Waktu Pembayaran"),
                Spacer(),
                Text("12-12-2024  11.00",style: TextStyle(color:Colors.grey))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Waktu Pesanan Selesai"),
                Spacer(),
                Text("12-12-2024  13.00",style: TextStyle(color:Colors.grey))
              ],
            ),
          ),
           Divider(color: Colors.grey),
        ],
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
                child: Center(child: Text("Ganti Jadwal",style: TextStyle(color: Colors.white,fontSize: 15),)),
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
                child: Center(child: Text("Pesan Lagi",style: TextStyle(color: Colors.white,fontSize: 15),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}