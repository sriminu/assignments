import 'package:flutter/material.dart';

class Whatsappchats extends StatelessWidget {
  @override
  List chats = [ ['Arpita', 'Flutter is so cool', 'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '1:40', '0'],
    ['Hardik', 'Lets Play', 'https://www.forbesindia.com/media/images/2022/Sep/img_193681_000_32cn8uh_bg.jpg', '1:40'],
    ['Aishwariya', 'Wash your hands properly', 'https://c4.wallpaperflare.com/wallpaper/333/375/713/actres-beauty-aishwarya-rai-bachchan-people-actors-hd-art-wallpaper-preview.jpg', '2:00''1'],
    ['Alia Bhatt', 'Lets Go outsite', 'https://www.forbesindia.com/media/images/2022/Aug/img_192013_aliabhattnetflix.jpg', '2:10','2'],
    ['Akshay Kumar', 'Its gym time', 'https://i2.wp.com/godofindia.com/wp-content/uploads/2017/05/akshay-kumar-6.jpg', '2:40','3'],
    ['John Cena', 'I will win tonights fight', 'https://stillrealtous.com/wp-content/uploads/2017/06/john-cena.jpeg', '2:50','4'],
    ['Kiara Advani', 'Getting married soon', 'https://1.bp.blogspot.com/-zGz5aE5YMKg/Xcbp0lwEl0I/AAAAAAAABC0/ZSUMyB6QIuMl6kT3JlYP-9zjW2PMmgVZwCNcBGAsYHQ/s1600/Kiara-Advani-Actress-New-Stills.jpg', '2:55','5'],
    ['Sidharth Malhotra', 'Getting married soon', 'https://wallpaperaccess.com/full/2257923.jpg', '3:00','6'],
    ['Adithya', 'its picture time', 'https://images.pexels.com/photos/1130626/pexels-photo-1130626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '3:40','7'],
    ['Ranbir Kapoor', 'New release on the way', 'https://wallpaperaccess.com/full/1405891.jpg', '4:40','8'],
    ['Sundar Pichai', 'I am the CEO of Goolge', 'https://wallpaperaccess.com/full/4225704.jpg', '5:00','9'],
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (BuildContext context, int index) =>
          Card(
            elevation: 45,
              shadowColor: Colors.white,
              color: Colors.white,
            child: ListTile(
              title: Text(chats[index][0]),
              subtitle: Text(chats[index][1]),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(chats[index][2]),

              ) ,
            ),
          ),
          itemCount: chats.length  ,
      ),
      floatingActionButton: CircleAvatar(backgroundColor: Colors.green,
        radius: 25,
        child: Icon(Icons.message,),
        
      ),
    );
  }

}