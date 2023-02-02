import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.purple),
    home: Gridview_with_Stack(),
  ));
}

class Gridview_with_Stack extends StatelessWidget {
  List content = [
    [
      'https://images.pexels.com/photos/2422588/pexels-photo-2422588.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1%27', 'USA'
    ],
    [
      'https://images.pexels.com/photos/57901/pexels-photo-57901.jpeg?auto=compress&cs=tinysrgb&w=600%27', 'INDIA'
    ],
    [
      'https://images.pexels.com/photos/3631051/pexels-photo-3631051.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1','FRANCE'
    ],
    [
      'https://images.pexels.com/photos/313782/pexels-photo-313782.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1%27', 'BRAZIL'
    ],
    ['https://images.pexels.com/photos/711193/pexels-photo-711193.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1%27', 'SINGAPORE'],
    ['https://images.pexels.com/photos/11709704/pexels-photo-11709704.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1%27', 'MANCHESTER'],
    ['https://images.pexels.com/photos/11259542/pexels-photo-11259542.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1%27','CANADA'],
    ['https://images.pexels.com/photos/11448162/pexels-photo-11448162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1%27', 'GERMANY'],
    ['https://images.pexels.com/photos/57901/pexels-photo-57901.jpeg?auto=compress&cs=tinysrgb&w=600%27', 'INDIA']

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'COUNTRIES',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2, mainAxisExtent: 150),
          itemBuilder: (context, index) {
            return Stack(children: [ Container(
              width: double.infinity,
              height: 150,
              child: ClipRRect(child: Image.network(content[index][0], fit: BoxFit.cover,), borderRadius: BorderRadius.circular(8) ,),


            ),
            Positioned( bottom: 20, left: 20,
              child: Text(content[index][1], style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),)
              ),

            ]
            );
          },
          itemCount: content.length,
        ),
      ),
    );
  }
}
