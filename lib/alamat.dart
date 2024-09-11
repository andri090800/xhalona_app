import 'package:flutter/material.dart';

class Alamat extends StatefulWidget{
  @override
  State<Alamat> createState() => _AlamatState();
}

class _AlamatState extends State<Alamat> {
  @override
  Widget build(BuildContext context) {
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
      body: ListView(
        children: [
          Align(
                alignment: Alignment.topCenter,
                 child: Text("Pilih Alamat Pesanan",style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                 ),),
               ), 
               SizedBox(height: 5,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nama Lengkap",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),),
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
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        ),
        SizedBox(height: 5,),
          Text("Alamat",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),),
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
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        ),
        SizedBox(height: 5,),
          Text("Kelurahan",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),),
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
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        ),
        SizedBox(height: 5,),
          Text("Kecamatan",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),),
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
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        ),
        SizedBox(height: 5,),
          Text("Kota",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),),
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
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        ),
        SizedBox(height: 5,),
          Text("Provinsi",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),),
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
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        ),
        SizedBox(height: 5,),
          Text("Kode Pos",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),),
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
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        ),
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
             Text("Simpan Alamat Ini"),
            Checkbox(value: false, onChanged: (value){}),
           
          ],
        ),
              SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                           child: ElevatedButton(onPressed: (){                            
                           },                           
                           style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffC0226D),
                           ),                          
                           child: Text("Simpan",
                           style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400
                           ) ,
                           )
                           ),
                         ),
                  ],
                 ),
               ),
        ],
      ),
    );
  }

  Widget _topBar(){
    return Row(
      children: [
        IconButton(onPressed: (){
          Navigator.pushNamed(context, '/halamanprofil');
        }, icon: Icon(Icons.arrow_back,color: Colors.white,)),
        SizedBox(
          width:125,
        ) ,    
         Text("Alamat Saya",
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