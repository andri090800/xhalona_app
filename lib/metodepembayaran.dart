import 'package:flutter/material.dart';

class Mepe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pushNamed(context, "/checkout");
        }, icon: Icon(Icons.arrow_back,color: Color(0xffC0226D),)),
        title: Text("Metode Pembayaran"),
        centerTitle: false,
        bottom: PreferredSize(preferredSize: Size.fromHeight(5), child: Divider(thickness: 5,)),
      ),
    );
  }
}