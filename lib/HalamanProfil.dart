import 'package:flutter/material.dart';

class halamanprofil extends StatefulWidget{
  @override
  State<halamanprofil> createState() => _halamanprofilState();
}

class _halamanprofilState extends State<halamanprofil> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        toolbarHeight: 150,
        flexibleSpace : PreferredSize(
          preferredSize: Size.fromHeight(150), 
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Color(0xffC0226D),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _topBar(),
                  _profil(),
                ],
              ),
            ),
          )
          ),          
      ),
      body: ListView(
        children: [
          Row(
            children: [
              IconButton(onPressed: null, icon: Icon(Icons.wallet,color: Color(0xffC0226D),)),
              Text("Dompetku",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
          Divider(
            color : Color(0xff88878F),
            height: 1,
            thickness: 0.3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Container(
                  width: 110,
                  height: 70,
                 decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xffC0226D),
                            ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("image/Point.png"),
                        Text("PointKu",
                        style:TextStyle(
                          color: Colors.white
                        ),
                        )
                      ],
                    ),
                  )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Container(
                  width: 110,
                  height: 70,
                 decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xffC0226D),
                            ),
                            child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("image/reward.png"),
                        Text("Reward",
                        style:TextStyle(
                          color: Colors.white
                        ),
                        )
                      ],
                    ),
                  )
                  ),
                ),
              ) ,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Container(
                  width: 110,
                  height: 70,
                 decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Color(0xffC0226D),
                            ),
                            child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("image/Ticket2.png"),
                        Text("Voucher",
                        style:TextStyle(
                          color: Colors.white
                        ),
                        )
                      ],
                    ),
                  )
                  ),
                ),
              )                  
            ],
          ),
           Divider(
            color : Color(0xff88878F),
            thickness: 5,
            height: 1,
          ),
          ListTile(
            leading: Image.asset("image/undo.png"),
            title: Text("Aktifitas saya",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
          Divider(
             color : Color(0xff88878F),
             height: 1,
          ),
          ListTile(
            leading: Image.asset("image/jam.png"),
            title: Text("Terakhir Dilihat",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
          Divider(
             color : Color(0xff88878F),
             height: 1,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/boking');
            },
            leading: Image.asset("image/Group.png"),
            title: Text("Pesanan Saya",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
          Divider(
             color : Color(0xff88878F),
             height: 1,
          ),
          ListTile(
            leading: Image.asset("image/shop.png"),
            title: Text("Salon Saya",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
          Divider(
             color : Color(0xff88878F),
             height: 1,
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, '/alamat');
            },
            leading: Image.asset("image/shop.png"),
            title: Text("Alamat Saya",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
          Divider(
             color : Color(0xff88878F),
             height: 1,
          ),
          ListTile(
            leading: Image.asset("image/teman.png"),
            title: Text("Member Xhalon",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
          Divider(
             color : Color(0xff88878F),
             height: 1,
          ),
          ListTile(
            leading: Image.asset("image/hati.png"),
            title: Text("Favorit saya",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
          Divider(
             color : Color(0xff88878F),
             height: 1,
          ),
          ListTile(
            leading: Image.asset("image/bintang.png"),
            title: Text("Penilaian saya",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
          Divider(
             color : Color(0xff88878F),
             height: 1,
          ),
          ListTile(
            leading: Image.asset("image/Ticket.png"),
            title: Text("Voucher saya",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
          Divider(
             color : Color(0xff88878F),
             height: 1,
          ),
        ],
      ),
    );
  }

  Widget _topBar(){
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("profil Saya",
          style: TextStyle(
            fontFamily: "",
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          ),
        ),
        Spacer(),
         IconButton(onPressed: (){
          Navigator.pushNamed(context,'/settingprofil');
         }, 
          icon: Icon(Icons.settings,
          color: Colors.white,),
         ),
          IconButton(onPressed: (){
            Navigator.pushNamed(context,'/keranjang');
          }, icon: Icon(Icons.shopping_cart_sharp,color: Colors.white)),
          IconButton(onPressed: null, icon: Icon(Icons.message,color: Colors.white)),
          
      ],
    );
  }

  Widget _profil(){
    return Row(

      children: [
        CircleAvatar(
          backgroundImage: AssetImage("image/Ellipse2.png"),
          radius: 40,
        ),
        SizedBox(width: 15,),
        Container(
          width: 350,
          height: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all( Radius.circular(10)),
            border: Border.fromBorderSide(BorderSide(color: Colors.white)),           
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Andri Mulyana",
                style: TextStyle(
                 color:  Colors.white
                ),
                ),
                SizedBox(height: 3,),
                Text("+6282216206676",
                 style: TextStyle(
                 color:  Colors.white
                ),
                ),
                SizedBox(height: 3,),
                Text("jl.Kapten Jamhur Cimenyan 2 Banjar Jawa Barat",
                 style: TextStyle(
                 color:  Colors.white
                ),
                )
            
              ],
            ),
          )
        )
      ],
    );
  }
}
      