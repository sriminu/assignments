import 'package:flutter/material.dart';

class Whatsappstatus extends StatelessWidget {
  List status = [
    ['Amrutha', '59 minutes ago', 'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'],
    ['Akshay', '59 minutes ago', 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTF8fHxlbnwwfHx8fA%3D%3D&w=1000&q=80'],
    ['Ranbir', '59 minutes ago', 'https://wallpaperaccess.com/full/1405891.jpg'],
    ['Alia', '59 minutes ago', 'https://www.forbesindia.com/media/images/2022/Aug/img_192013_aliabhattnetflix.jpg'],
    ['Sundar Pichai', '59 minutes ago', 'https://wallpaperaccess.com/full/4225704.jpg'],
    ['Kaira', '59 minutes ago', 'https://1.bp.blogspot.com/-zGz5aE5YMKg/Xcbp0lwEl0I/AAAAAAAABC0/ZSUMyB6QIuMl6kT3JlYP-9zjW2PMmgVZwCNcBGAsYHQ/s1600/Kiara-Advani-Actress-New-Stills.jpg'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(

          children: [
            Row(
      children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Stack(children: [
                  Container(
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                      radius: 30,
                    ),
                  ),
                  Positioned(
                    right: 0.5,
                    bottom: 0.5,
                    child: Container(
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 12,
                        child: Icon(Icons.add),
                      ),
                    ),
                  )
                ]),
              ),
            ]),

   Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('My Status', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 2),
                    child: Text('Tap to add status update'),
                  )
                ],
              ),
    ]
            ),
            SizedBox(height: 8,),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
                child: Text('Recent Updates'),
              ),

              height: 30, color: Colors.grey, width: 500,
            ),
            Container(
              child: ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage('https://www.forbesindia.com/media/images/2022/Sep/img_193681_000_32cn8uh_bg.jpg'),),
                  title: Text('Ashish'),
                  subtitle: Text('24 minutes ago'),
                ),
            ),
            ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage('https://wallpaperaccess.com/full/1405891.jpg'),),
              title: Text('Ranbir'),
              subtitle: Text('30 minutes ago'),
            ),
            SizedBox(height: 8,),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5, top: 5),
                child: Text('Viewed Updates'),
              ),
              height: 30, color: Colors.grey, width: 500,
            ),
Expanded(
  child:   ListView.separated(itemBuilder: (context, index) => ListTile(
    leading: CircleAvatar(backgroundImage: NetworkImage(status[index][2]),),
    title: Text(status[index][0]),
    subtitle: Text(status[index][1]),
  ),
      separatorBuilder: (context, int index) => Divider(
        thickness: 2, height: 2,
      ),
      itemCount: status.length),
)

    ]
    ),
      floatingActionButton: CircleAvatar(backgroundColor: Colors.green,
        radius: 25,
        child: Icon(Icons.camera_alt,),

      ),
    );



  }
}
