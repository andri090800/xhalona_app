import 'package:flutter/material.dart';

class Settingprofil extends StatefulWidget{
  @override
  State<Settingprofil> createState() => _SettingprofilState();
}

class _SettingprofilState extends State<Settingprofil> {
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
              color: Color(0xffFFFFFF),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column( 
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _topBar(),
                  Spacer(),
                  _profil(),
                ],
              ),
            ),
          )
          ),    
      ),
      body: ListView(
        children: [
           ListTile(
            leading: IconButton(onPressed: null, icon: Icon(Icons.woman_outlined,color: Color(0xffC0226D),)),
            title: Text("Jenis Kelamin",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
           ListTile(
            leading: IconButton(onPressed: null, icon: Icon(Icons.calendar_month,color: Color(0xffC0226D),)),
            title: Text("Tanggal Lahir",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
           ListTile(
            leading: IconButton(onPressed: null, icon: Icon(Icons.email,color: Color(0xffC0226D),)),
            title: Text("email",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
           ListTile(
            leading: IconButton(onPressed: null, icon: Icon(Icons.phone,color: Color(0xffC0226D),)),
            title: Text("No Handphone",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
           ListTile(
            leading: IconButton(onPressed: null, icon: Icon(Icons.lock,color: Color(0xffC0226D),)),
            title: Text("Ubah Password",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
          ),
           ListTile(
            leading: IconButton(onPressed: null, icon: Icon(Icons.location_pin,color: Color(0xffC0226D),)),
            title: Text("Alamat",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ) ,),
            trailing: IconButton(onPressed: null, icon: Icon(Icons.arrow_right_outlined,color: Color(0xffC0226D),))
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
        }, icon: Icon(Icons.arrow_back,color: Color(0xffC0226D),)),
        Text("Profil saya",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20,
          ),)

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
        Column(
          children: [
            Text("Andri Mulyana",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            )),
           
            Text("Manager Tim",style: TextStyle(
              fontWeight: FontWeight.bold
            )),
          ],
        )
      ],
    );
  }
}