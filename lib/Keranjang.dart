import 'package:flutter/material.dart';
import 'package:xhalon_app/itemtab.dart';


 class Keranjang extends StatefulWidget{ 
  const Keranjang({super.key});
  @override
  State<Keranjang> createState() => _keranjangState();
}
class _keranjangState extends State<Keranjang> {
  String? selected  ;
  List<String> data =[
    'Halus',
    'Tebal',
   ];
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 112,
          leading: Container(),     
          flexibleSpace : PreferredSize(
            preferredSize: Size.fromHeight(150), 
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column( 
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _topBar(),
                  Divider(
                    thickness: 3,
                  ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: Container(
                      height: 40,
                      margin: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xffF5ABCF),
                      ),
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                          color: Color(0xffC0226D),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black54,
                        tabs: [
                          Itemtab(title: 'Semua', count: 99),
                          Itemtab(title: 'Diskon', count: 99),
                          Itemtab(title: 'pesan Lagi', count: 99),
                        ],
                      ),
                    )
                ),
                  ],
                ),
              ),
            )
            ),            
        ),
         body: TabBarView(
          children: [
            Material(
              child: ListView(
                children: [
                  ListTile(
                    leading: Checkbox(value: false, onChanged: (value){}),
                title: Text("salon Jhoni"),
                  ),
                  Divider(
                    height: 1,
                    thickness: 0.3,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      width: double.infinity,
                      height: 140,                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 3,
                            offset: Offset(5, 5)
                          )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(value: false, onChanged: (value){}),
                            Container(
                              width: 117,
                              height: 80,
                             decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("image/cukur.png"),
                                fit: BoxFit.cover
                              ),
                             ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Catok",style: TextStyle(fontSize: 15),),
                                  Container(
                                    width: 130,
                                    height: 25,
                                    color: Color(0xffE9E9E9),
                                    child: DropdownButton(
                                      hint: Text("Pilih Variasi"),
                                      value: selected,
                                      onChanged: (value){
                                        print(value);
                                        setState(() {
                                          selected = value; 
                                        });
                                      },
                                      items: data.map((e) => DropdownMenuItem(value: e,child: Text("Variasi :"+e))).toList(),
                                    ),
                                  ),
                                  Text("Rp 25.000",style: TextStyle(
                                    color: Color(0xffC0226D)
                                  ),),
                                  Container(
                                     height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1,color: Colors.grey),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 5,),                                        
                                        IconButton(icon: Icon(Icons.add,size: 20,),onPressed: (){} ),                                        
                                        SizedBox(width: 5,),
                                        Text("1",style: TextStyle(fontSize: 20),),
                                        SizedBox(width: 5,),                                        
                                       IconButton(
                                                icon: Icon(Icons.remove,size: 20,),
                                                onPressed: (){},
                                                )                                                                                                      
                                      ],
                                    ),
                                  ),                                                                      
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      width: double.infinity,
                      height: 140,                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 3,
                            offset: Offset(5, 5)
                          )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(value: false, onChanged: (value){}),
                            Container(
                              width: 117,
                              height: 80,
                             decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("image/cukur.png"),
                                fit: BoxFit.cover
                              ),
                             ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Catok",style: TextStyle(fontSize: 15),),
                                  Container(
                                    width: 130,
                                    height: 25,
                                    color: Color(0xffE9E9E9),
                                    child: DropdownButton(
                                      hint: Text("Pilih Variasi"),
                                      value: selected,
                                      onChanged: (value){
                                        print(value);
                                        setState(() {
                                          selected = value; 
                                        });
                                      },
                                      items: data.map((e) => DropdownMenuItem(value: e,child: Text("Variasi :"+e))).toList(),
                                    ),
                                  ),
                                  Text("Rp 25.000",style: TextStyle(
                                    color: Color(0xffC0226D)
                                  ),),
                                  Container(
                                     height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1,color: Colors.grey),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 5,),                                        
                                        IconButton(icon: Icon(Icons.add,size: 20,),onPressed: (){} ),                                        
                                        SizedBox(width: 5,),
                                        Text("1",style: TextStyle(fontSize: 20),),
                                        SizedBox(width: 5,),                                        
                                       IconButton(
                                                icon: Icon(Icons.remove,size: 20,),
                                                onPressed: (){},
                                                )                                                                                                      
                                      ],
                                    ),
                                  ),                                                                      
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(
                      width: double.infinity,
                      height: 140,                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            spreadRadius: 3,
                            offset: Offset(5, 5)
                          )
                          ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(value: false, onChanged: (value){}),
                            Container(
                              width: 117,
                              height: 80,
                             decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage("image/cukur.png"),
                                fit: BoxFit.cover
                              ),
                             ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Catok",style: TextStyle(fontSize: 15),),
                                  Container(
                                    width: 130,
                                    height: 25,
                                    color: Color(0xffE9E9E9),
                                    child: DropdownButton(
                                      hint: Text("Pilih Variasi"),
                                      value: selected,
                                      onChanged: (value){
                                        print(value);
                                        setState(() {
                                          selected = value; 
                                        });
                                      },
                                      items: data.map((e) => DropdownMenuItem(value: e,child: Text("Variasi :"+e))).toList(),
                                    ),
                                  ),
                                  Text("Rp 25.000",style: TextStyle(
                                    color: Color(0xffC0226D)
                                  ),),
                                  Container(
                                    height: 30,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 1,color: Colors.grey),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(width: 5,),                                        
                                        IconButton(icon: Icon(Icons.add,size: 20,),onPressed: (){} ),                                        
                                        SizedBox(width: 5,),
                                        Text("1",style: TextStyle(fontSize: 20),),
                                        SizedBox(width: 5,),                                        
                                       IconButton(
                                                icon: Icon(Icons.remove,size: 20,),
                                                onPressed: (){},
                                                )                                                                                                      
                                      ],
                                    ),
                                  ),                                                                      
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
                
              ),
              
            ),
            Center(child: Text('Diskon')),
            Center(child: Text('Pesan Lagi')),
          ],
         ),
       bottomNavigationBar: Container(
        height: 90,
        width: double.infinity,
       child: Column(
        children: [
          ListTile(
            title: Text("Masukan Kode Voucher"),
            trailing: Icon(Icons.arrow_right),
            onTap: (){},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(value: false, onChanged: (value){}),
              Align(
                alignment: Alignment.topRight,
                child: Text("Semua")),
                Spacer(),
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
          )
        ],
       ),
       ),
      ),
    );
    
  }

   Widget _topBar(){
    return Row(
      children: [
        IconButton(onPressed: (){
          Navigator.pushNamed(context, '/halamanprofil');
        }, icon: Icon(Icons.arrow_back,color: Color(0xffC0226D),)),
        Text("Keranjang saya",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 17,
          ),),
          Spacer(),
          Text("Chat"),
          IconButton(onPressed: (){}, icon:Icon(Icons.chat,color: Color(0xffC0226D),))

      ],
    );
  }
}