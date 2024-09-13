import 'package:flutter/material.dart';

class DetailProduk extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     AppBar appBarCustom() {
      return AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          icon: Image.asset(
            "image/back.png",
            width: 41,
            height: 33,
          ),
          color: Colors.black,
        ),
        flexibleSpace: Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            color: Color(0xffC0226D),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 190,
            height: 36,
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: const Icon(Icons.search),
                  hintText: 'Pencarian Produk'),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'image/keranjang.png',
              width: 41,
              height: 33,
            ),
          ),
          Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset(
                'image/menu.png',
                width: 41,
                height: 33,
              ),
            );
          }),
        ],
      );
    }

    return Scaffold(
      appBar: appBarCustom(),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.amber
              ),
              child: Image(image: AssetImage("image/catok.png"),fit: BoxFit.cover,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Rp 50.000 - Rp 100.000",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                IconButton(onPressed: (){}, icon: Image.asset("image/hati.png"),)
              ],
            ),
            SizedBox(height: 5,),
            Text("Catok",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Terlaris #1",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),),
                Container(
                  height: 20,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC0226D)) 
                  ),
                  child: Row(
                    children: [
                      Image(image: AssetImage("image/star1.png")),
                      Text("4,9(9 rb)")
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  width: 165,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC0226D)) 
                  ),
                  child: TextButton(onPressed: (){}, child: Text("Foto Customer(1000)",style: TextStyle(color: Colors.black),))
                ),
                Container(
                  height: 20,
                  width: 90,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffC0226D)) 
                  ),
                  child: Text("Diskusi(1000)"),
                ),
              ],
            ),
            Divider(color: Colors.black,),
            Text("Deskripsi Produk",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Text("Catok Adalah Suatu terapis yang ...",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
            Divider(color: Colors.black,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Image.asset("image/salon1.png"),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("image/bintang.png"),
                        SizedBox(width: 5,),
                        Text("5.0",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                     
                        
                      ],
                    ),
                    
                  ],
                ),
                Image.asset("image/logo.png"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Salon Jhoni",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
                    Text(".Online",style: TextStyle(fontSize: 15,color: Colors.lightGreen),),
                    Text("Bandung",style: TextStyle(fontSize: 20,color: Colors.grey),),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 60,),
                    Container(
                              width: 93,
                              height: 31,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffC0226D))
                              ),
                              child: Center(child: Text("Kunjungi",style: TextStyle(color: Color(0xffC0226D),fontSize: 15),))
                            ),
                  ],
                ),
              ],
            ),
            Divider(color: Colors.black,),
            Row(children: [
              Text("Lainnya Salon ini",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
              Spacer(),
              TextButton(onPressed: (){}, 
              child: Text("Lihat Semua",style: TextStyle(color: Color(0xffC0226D) ),))
            ],),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      width: 180,
                      height: 267,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 3,
                              spreadRadius: 3,
                              offset: Offset(5, 5)
                            )
                            ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("image/produk1.png"),
                            Text("Kepang Condrow",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                            Text("Rp 100.000",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                            Row(children: [
                              Image.asset("image/crown.png"),
                              SizedBox(width: 5,),
                              Text("Salon Jhoni",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                            ],),
                            Text("Buka",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                            Text("09.00-18.00 Senin-Minggu",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                            Row(
                              children: [
                                Icon(Icons.location_pin),
                                 Text("Jakarta Utara",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),                            
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset("image/bintang.png"),
                                 Text("5.0",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),                            
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 180,
                      height: 267,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 3,
                              spreadRadius: 3,
                              offset: Offset(5, 5)
                            )
                            ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("image/produk1.png"),
                            Text("Kepang Condrow",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                            Text("Rp 100.000",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                            Row(children: [
                              Image.asset("image/crown.png"),
                              SizedBox(width: 5,),
                              Text("Salon Jhoni",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                            ],),
                            Text("Buka",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                            Text("09.00-18.00 Senin-Minggu",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                            Row(
                              children: [
                                Icon(Icons.location_pin),
                                 Text("Jakarta Utara",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),                            
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset("image/bintang.png"),
                                 Text("5.0",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),                            
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 180,
                      height: 267,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 3,
                              spreadRadius: 3,
                              offset: Offset(5, 5)
                            )
                            ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("image/produk1.png"),
                            Text("Kepang Condrow",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                            Text("Rp 100.000",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w500),),
                            Row(children: [
                              Image.asset("image/crown.png"),
                              SizedBox(width: 5,),
                              Text("Salon Jhoni",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                            ],),
                            Text("Buka",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                            Text("09.00-18.00 Senin-Minggu",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                            Row(
                              children: [
                                Icon(Icons.location_pin),
                                 Text("Jakarta Utara",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),                            
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset("image/bintang.png"),
                                 Text("5.0",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),                            
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                  ],
                ),
              ),
            ),
            Divider(color: Colors.black,),
            SizedBox(height: 5,),
            Row(
              children: [
                Text("Ulasan Pembeli",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                Spacer(),
                TextButton(onPressed: (){}, 
                 child: Text("Lihat Semua",style: TextStyle(color: Color(0xffC0226D) ),))
              ],
            ),
            Divider(color: Colors.black,),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Penilaian Produk",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey),),
                Spacer(),
                TextButton(onPressed: (){}, 
                 child: Text("Lihat Semua",style: TextStyle(color: Color(0xffC0226D) ),))
              ],
            ),
        ],
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 57,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(          
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 58,
                height: 48,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xffC0226D)
               ),
               child:Icon(Icons.message,color: Colors.white,)
              ),
              Container(
                width: 367,
                height: 48,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xffC0226D)
               ),
               child: Center(child: Text("Masukan Keranjang",
               style: TextStyle(
                color: Colors.white,
                fontSize: 20),)),
              ),
               Container(
                width: 58,
                height: 48,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color(0xffC0226D)
               ),
               child:Icon(Icons.shop_two,color: Colors.white,)
              ),
            ],
          ),
        ),
      ),
    );
  }
}