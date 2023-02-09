import 'package:assignments/whatsappcall.dart';
import 'package:assignments/whatsappchats.dart';
import 'package:assignments/whatsappstatus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xff075e54))),
    home: Whatsapphome(),
  ));
}

class Whatsapphome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      initialIndex: 1 ,
      child: Scaffold(
     appBar: AppBar(title: Text('WhatsApp'),
       actions: [
         Icon(Icons.search),
         SizedBox(width: 15,),
         Icon(Icons.more_vert)
       ],
       bottom: TabBar(
           labelPadding: EdgeInsets.zero,
           isScrollable: true,
           indicatorColor: Colors.white,
           tabs: [
       SizedBox(
       width: MediaQuery.of(context).size.width * .1,
         child: Icon(Icons.group)),
        SizedBox(
            width: MediaQuery.of(context).size.width * .3,
            child: Tab(text: 'Chat')),
        SizedBox(
          width: MediaQuery.of(context).size.width * .3,
          child: Tab(
            text: 'Status',
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .3,
          child: Tab(text: 'Call')
        )
       ]),
     ), 
      body: TabBarView(
        children: [
          Center(child: Text('Camera'),),
          Whatsappchats(),
          Whatsappstatus(),
          Whatsappcall()
        ],


      ),
      ),
    );
  }
}