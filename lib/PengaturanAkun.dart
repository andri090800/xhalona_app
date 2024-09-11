import 'package:flutter/material.dart';


class Pengaturanakun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: ListView(
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  
                  Stack(
                    children: [
                      Image(
                      image: AssetImage("image/Ellipse1.png"),
                      width: 140,
                      height: 140,
                      fit: BoxFit.fill,           
                      ),
               Align(
                alignment: Alignment.bottomCenter,
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/halamanprofil');                    
                  },
                  icon : Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 15,)
                  
                 
                ),
               ),
                    ],
                  ),
                  
                  
                ],
              ),
              
             
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Pengaturan Akun",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("image/Ellipse2.png"),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       Text("Upload Photo Kamu",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(                    
                    child: ElevatedButton(onPressed: null, 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.add_a_photo),
                      Text("Upload",
                      style: TextStyle(
                        fontSize: 15
                      ),)
                    ],
                  )
                  ),
                  width: 150,),
                    ],
                  )
                 
                 
                ],
              ),
            ),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                          form1(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               form2(),                               
                               form3(),
                            ],
                          ),
                          form4(),
                          
                          form7(),
                          form8(),
                          form9(),
                          form10(),
                          form11(),
                          form5(),
                          form6(),
                          SizedBox(
                            height: 10,
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
        )
      );    
    
   
  } 

  Widget form1(){
    return Column(
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
            suffixIcon: Icon(Icons.person),
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        ),

      ],
    );
  }
  Widget form2(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("tempat",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),),
        Container(
          height: 50,
          width: 150,
          child: TextFormField( 
            textAlign: TextAlign.start,
            showCursor: true,
            decoration: InputDecoration(
              hintText: "Jakarta",
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
        )
        
      ],
    );
  }
  Widget form3(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Tanggal Lahir",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),),
        Container(
          height: 50,
          width: 250,
          child: TextFormField( 
            textAlign: TextAlign.start,
            showCursor: true,
            decoration: InputDecoration(
               hintText: "12-12-2024",
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
        )
        
      ],
    );
  }
   Widget form4(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Alamat Lengkap",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15
        ),),
        TextFormField( 
          minLines: 1,
          maxLines: 4,
          textAlign: TextAlign.start,
          showCursor: true,
          decoration: InputDecoration(
            enabledBorder : UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)
            ),
            suffixIcon: Icon(Icons.location_on),
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        )

      ],
    );
  }
  Widget form7(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            suffixIcon: Icon(Icons.location_on),
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        ),

      ],
    );
  }
  Widget form8(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            suffixIcon: Icon(Icons.location_on),
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        ),

      ],
    );
  }
  Widget form9(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            suffixIcon: Icon(Icons.location_on),
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        ),

      ],
    );
  }
  Widget form10(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            suffixIcon: Icon(Icons.post_add),
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        ),

      ],
    );
  }
  Widget form11(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Poin Of Maps",
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

      ],
    );
  }
   Widget form5(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email",
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
            suffixIcon: Icon(Icons.email),
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        )

      ],
    );
  }
  Widget form6(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("No. Telepon",
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
            suffixIcon: Icon(Icons.phone),
            filled: true,
            fillColor: Color(0xffF0F0F0)
            
          ),
        )

      ],
    );
  }
}    
