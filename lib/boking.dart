import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Boking extends StatefulWidget{
  @override
  State<Boking> createState() => _BokingState();
}

class _BokingState extends State<Boking> {
  DateTime today = DateTime.now();

  Widget build (BuildContext context){
    return Scaffold(
       appBar: AppBar(
        leading: Container(),
        toolbarHeight: 60,
        flexibleSpace : PreferredSize(
          preferredSize: Size.fromHeight(150), 
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
              color: Color(0xffC0226D),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.8),
              child: Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _topBar(),                 
                ],
              ),
            ),
          )
          ),          
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(  
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Pilih Jadwal Pemesanan",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
                Container(
                  child: TableCalendar(
                    focusedDay: today, 
                    firstDay: DateTime.utc(2010,10,16),
                    lastDay: DateTime.utc(2030,3,14),
                    )
                ),
              
               Align(
                alignment: Alignment.topLeft,
                 child: Text("Jam Tersedia",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                 ),),
               ), 
               
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Pagi",style: TextStyle(color: Colors.grey),),
                    SizedBox(
                      width: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("10.00"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("11.00"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("12.00"))),
                    ),
                  ],
                 ),
               ),
                Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Siang",style: TextStyle(color: Colors.grey),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("13.00"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("14.00"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("15.00"))),
                    ),
                  ],
                 ),
               ),
                Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Sore",style: TextStyle(color: Colors.grey),),
                    SizedBox(
                      width: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("16.00"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("17.00"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("18.00"))),
                    ),
                  ],
                 ),
               ),
                Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Malam",style: TextStyle(color: Colors.grey),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("19.00"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("20.00"))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("21.00"))),
                    ),
                  ],
                 ),
               ),
               Align(
                alignment: Alignment.topLeft,
                 child: Text("Terapis",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                 ),),
               ), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Column(
                     children: [
                      Container(
                        width: 76,
                        height: 76,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("image/nama1.png"),
                          fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 3,
                            spreadRadius: 3,
                            offset: Offset(5, 5)
                          )
                          ]
                       ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Nama 1",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                        ),),
                      )
                     ],
                   ),
                   Column(
                     children: [
                      Container(
                        width: 76,
                        height: 76,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("image/nama1.png"),
                          fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 3,
                            spreadRadius: 3,
                            offset: Offset(5, 5)
                          )
                          ]
                       ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Nama 2",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                        ),),
                      )
                     ],
                   ),
                   Column(
                     children: [
                      Container(
                        width: 76,
                        height: 76,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("image/nama1.png"),
                          fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 3,
                            spreadRadius: 3,
                            offset: Offset(5, 5)
                          )
                          ]
                       ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Nama 3",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                        ),),
                      )
                     ],
                   ),
                   Column(
                     children: [
                      Container(
                        width: 76,
                        height: 76,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("image/nama1.png"),
                          fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 3,
                            spreadRadius: 3,
                            offset: Offset(5, 5)
                          )
                          ]
                       ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Nama 4",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                        ),),
                      )
                     ],
                   ),
                   Column(
                     children: [
                      Container(
                        width: 76,
                        height: 76,
                       decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage("image/nama1.png"),
                          fit: BoxFit.cover
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 3,
                            spreadRadius: 3,
                            offset: Offset(5, 5)
                          )
                          ]
                       ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Nama 5",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400
                        ),),
                      )
                     ],
                   ),
                   
                  ],
                ),
                Align(
                alignment: Alignment.topLeft,
                 child: Text("Pilih Metode",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                 ),),
               ), 
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("Datang Ke Salon"))),
                      SizedBox(
                      child: ElevatedButton(onPressed: (){}, child: Text("Boking Ke Rumah"))),
                ],
               ),
               Align(
                alignment: Alignment.topLeft,
                 child: Text("Alamat :",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500
                 ),),
               ), 
               TextFormField( 
          textAlign: TextAlign.start,
          showCursor: true,
          decoration: InputDecoration(
            enabledBorder : UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)
            ),
            suffixIcon: Icon(Icons.location_history),
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        ),
               SizedBox(height: 10,),
               SizedBox(
                width: MediaQuery.of(context).size.width,
                
                      child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffC0226D),
                           ), 
                       child: Text("Lanjutkan",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                       ),))),

              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _topBar(){
    return Row(
      children: [
        IconButton(onPressed: (){
          Navigator.pushNamed(context, '/checkout');
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        SizedBox(
          width:125,
        ) ,    
         Text("Boking Pesanan",
            style: TextStyle(
              fontFamily: "",
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),                  
      ],
    );
  }
}