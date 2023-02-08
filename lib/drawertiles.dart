import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'DRAWER',
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ),
        drawer: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('RUBINA'),
              accountEmail: Text('rubinajim778@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://media.istockphoto.com/id/1368824624/photo/young-and-attractive-caucasian-or-arab-brunette-girl-in-white-t-shirt-showing-love-gesture.jpg?b=1&s=170667a&w=0&k=20&c=cMDTD6vgAS7tDYICSL20rS7tO2b0tTsL2TMOQhsteUk='),
              ),

            ),
            Container( decoration: BoxDecoration(gradient:LinearGradient(colors: colors)),
              child: const ListTile(
                  leading: Icon(Icons.dashboard),
                  title: Text('DASHBOARRD'),
                  trailing: Icon(Icons.arrow_downward_sharp)),
            ),

            ListTile(
                leading: Icon(Icons.group_add),
                title: Text('LEADBOARD'),
                trailing: Icon(Icons.arrow_downward_sharp)),
            ListTile(
                leading: Icon(Icons.group_add_rounded),
                title: Text('CLIENTS'),
                trailing: Icon(Icons.arrow_downward_sharp)),
            ListTile(
                leading: Icon(Icons.rocket_launch),
                title: Text('PROJECTS'),
                trailing: Icon(Icons.arrow_downward_sharp)),
            ListTile(
                leading: Icon(Icons.handshake),
                title: Text('PARTNERS'),
                trailing: Icon(Icons.arrow_downward_sharp)),
            ListTile(
                leading: Icon(Icons.subscriptions),
                title: Text('SUBSCRIPTION'),
                trailing: Icon(Icons.arrow_downward_sharp)),
            ListTile(
                leading: Icon(Icons.payment),
                title: Text('PAYMENTS'),
                trailing: Icon(Icons.arrow_downward_sharp)),
            ListTile(
                leading: Icon(Icons.person),
                title: Text('USERS'),
                trailing: Icon(Icons.arrow_downward_sharp)),
            ListTile(
                leading: Icon(Icons.layers),
                title: Text('LIBRARY'),
                trailing: Icon(Icons.arrow_downward_sharp)),

            Padding(
              padding: const EdgeInsets.all(150),
              child: ElevatedButton(onPressed: () {}, child: Text('LOGOUT'),),
            ),

          ],
        )
    );
  }
}
