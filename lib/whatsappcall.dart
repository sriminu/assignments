import 'package:flutter/material.dart';

class Whatsappcall extends StatelessWidget{
  List calls = [ ['Hardik', 'Yesterday 11:00', 'https://www.forbesindia.com/media/images/2022/Sep/img_193681_000_32cn8uh_bg.jpg', (Icons.call), (Icons.call_made)],
  ['Hardik', 'Yesterday 11:00', 'https://www.forbesindia.com/media/images/2022/Sep/img_193681_000_32cn8uh_bg.jpg', (Icons.call), (Icons.call_missed)],
    ['Alia Bhatt', 'Yesterday 11:00', 'https://www.forbesindia.com/media/images/2022/Aug/img_192013_aliabhattnetflix.jpg', (Icons.call), (Icons.call_made)],
    ['Kiara Advani', 'Yesterday 11:00', 'https://1.bp.blogspot.com/-zGz5aE5YMKg/Xcbp0lwEl0I/AAAAAAAABC0/ZSUMyB6QIuMl6kT3JlYP-9zjW2PMmgVZwCNcBGAsYHQ/s1600/Kiara-Advani-Actress-New-Stills.jpg', (Icons.call), (Icons.call_made)],
    ['Ranbir Kapoor', 'Yesterday 11:00', 'https://wallpaperaccess.com/full/1405891.jpg', (Icons.call), (Icons.call_made)],
    ['Sundar Pichai', 'Yesterday 11:00', 'https://wallpaperaccess.com/full/4225704.jpg', (Icons.call), (Icons.call_made)]

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context, index) => ListTile(
        leading: CircleAvatar(backgroundImage: NetworkImage(calls[index][2]),),
        title: Text(calls[index][0]),
        subtitle: Row(
          children: [
            Icon(calls[index][4], size: 15, color: Colors.green,),
            SizedBox(width: 8,),
            Text(calls[index][1]),

          ],
        ),
        trailing: Icon(calls[index][3], color: Colors.green,),
      )
          , separatorBuilder: (context, int index) => Divider(
thickness: 2, height: 2,
          ),
          itemCount: calls.length),
      floatingActionButton: CircleAvatar(backgroundColor: Colors.green,
        radius: 25,
        child: Icon(Icons.add_call,),

      ),
    );
  }

}