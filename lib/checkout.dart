import 'package:flutter/material.dart';

class Checkout extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, "/keranjang");
        }, icon: Icon(Icons.arrow_back,color: Color(0xffC0226D),)),
        title: Text("Checkout"),
        centerTitle: false,
        bottom: PreferredSize(preferredSize: Size.fromHeight(5), child: Divider(thickness: 5,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("Alamat :",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                ),),
              ),
            ),
            Row(
              children: [
                Icon(Icons.location_pin),
                Text("Jalan Kaptem Jamhur",style: TextStyle(
                  color: Colors.grey),)
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text("Salon Jhoni",style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Container(
              width: double.infinity,
              height: 100,
              color: Color(0xffE9E9E9),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image(image: AssetImage("image/cukur.png")),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Catok",style: TextStyle(fontSize: 20),),
                      Text("Kategori Catok"),
                      Text("Rp 50.000",style: TextStyle(color: Color(0xffC0226D)),),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("x1"),
                  )
                ],
              ),
            ),
            ListTile(
              onTap: (){},
              leading: Image.asset("image/reward.png",color: Color(0xffC0226D) ,),
              title: Text("Voucher Salon"),
              trailing: Text("Silahkan masukan voucher",style: TextStyle(color: Colors.grey),),
            ),
            Container(
              width: double.infinity,
              height: 158,
              color: Color(0xffE9E9E9),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("image/Group.png"),
                        SizedBox(width: 3,),
                        Text("Rincian jadwal :")
                      ],
                    ),
                  ),
                    ListTile(onTap: (){},leading: Text("Tanggal :"),trailing: Text("12-12-2024",style: TextStyle(color: Colors.grey),),dense: true,),
                    ListTile(onTap: (){},leading: Text("Jam Boking :"),trailing: Text("15.00 wib",style: TextStyle(color: Colors.grey),),dense: true,),
                    ListTile(onTap: (){},leading: Text("Terapis :"),trailing: Text("Sinta dan Jojo",style: TextStyle(color: Colors.grey),),dense: true,),
                ],
              ),
            ),
            Divider(thickness: 5,),
            ListTile(onTap: (){},leading: Text("Pesan"),trailing: Text("silahkan ketik pesan"),dense: true,),
            Divider(thickness: 1,),
            Row(
              children: [
                Text("Metode Pemesanan :"),
                Spacer(),
                TextButton(onPressed: (){}, child: Text("Pilih Pemesanan")),
               
              ],
            ),
            Row(
              children: [
                Text("Total Pesanan :"),
                Spacer(),
                Text("Rp 50.000",style: TextStyle(color: Color(0xffC0226D)),),               
              ],
            ),
            Divider(thickness: 5,),
           Container(
            width: double.infinity,
            height: 160,
            color: Color(0xffE9E9E9),
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset("image/ticket.png"),
                  title: Text("Voucher Member"),
                  trailing: Text("Silahkan Pilih Vocher",style: TextStyle(color: Colors.grey),),
                  dense: true,
                  ),
                  Divider(thickness: 1,),
                  ListTile(
                  leading:Image.asset("image/point.png"),
                  title: Text("Point Tidak Dapat Ditukarkan"),
                  trailing: Text("Silahkan Pilih Vocher",style: TextStyle(color: Colors.grey),),
                  dense: true,
                  ),
                   Divider(thickness: 1,),
                  ListTile(
                    onTap: (){
                      Navigator.pushNamed(context, "/mepe");
                    },
                  leading:Image.asset("image/Group.png"),
                  title: Text("Metode Pembayaran"),
                  trailing: Text("Silahkan Pilih Metode Pembayaran",style: TextStyle(color: Colors.grey),),
                  dense: true,
                  ),

              ],
            ),
           ),
           Divider(thickness: 5,),
           Container(
              width: double.infinity,
              height: 200,
              color: Color(0xffE9E9E9),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset("image/Group.png"),
                        SizedBox(width: 3,),
                        Text("Rincian Pembayaran :")
                      ],
                    ),
                  ),
                    ListTile(leading: Text("Produk :"),trailing: Text("Rp 50.000",style: TextStyle(color: Colors.grey),),dense: true,),
                    ListTile(leading: Text("Diskon :"),trailing: Text("-Rp 20.000",style: TextStyle(color: Colors.grey),),dense: true,),
                    ListTile(leading: Text("Biaya Layana :"),trailing: Text("Rp 1.000",style: TextStyle(color: Colors.grey),),dense: true,),
                    ListTile(leading: Text("Total Pembayaran :"),trailing: Text("Rp 31.000 ",style: TextStyle(color: Colors.grey),),dense: true,),
                ],
              ),
            ),
            Divider(thickness: 5,),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 40,
        width: double.infinity,
        color: Color(0xffE9E9E9
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(children:[
                Text("Total Pembayaran"),
                Text("Rp 25.000")
                ]),
                SizedBox(width: 5,),
              Container(
                         height: 35,
                          width: 125,
                           child: ElevatedButton(onPressed: (){
                            Navigator.pushNamed(context, "/checkout");
                           },                           
                           style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Color(0xffC0226D),
                           ),                          
                           child: Text("Pesan Sekarang",
                           style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w400
                           ) ,
                           )
                           ),
                         ),
            ],
          ),
      ),
    );
  }
}