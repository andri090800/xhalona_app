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
      appBar: appBarCustom() ,
    );
  }
}