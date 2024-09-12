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
      body: ListView(
        children: [
          ExpansionTile(leading: Image.asset("image/transfer.png"),title: Text('Transfer Bank'),
          children: [
            ListTile(leading: Image.asset("image/bca.png"),title: Text("BCA Virtual Account"),),
            ListTile(leading: Image.asset("image/mandiri.png"),title: Text("Mandiri Virtual Account"),),
            ListTile(title: Text("Bank Lainnya"),),
          ],),
         
          ExpansionTile(leading: Icon(Icons.card_membership),title: Text('Kartu Debit/Kredit'),
          children: [
            ListTile(leading: Icon(Icons.add_business),title: Text("Tambahkan Kartu Debit/Kredit"),),
          ],),
         
          
        ],
      ),
    );
  }
}