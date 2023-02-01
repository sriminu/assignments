import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Grid_With_Card_View(),
  ));
}

class Grid_With_Card_View extends StatelessWidget {
  List cardcontent = [
    [(Icons.home), 'HOME', Colors.blue],
    [(Icons.notification_important), 'NOTIFICATION', Colors.green],
    [(Icons.camera_alt_outlined), 'CAMERA', Colors.purple],
    [(Icons.flip_to_back_outlined), 'FLIP', Colors.orangeAccent],
    [(Icons.alarm), 'ALARM', Colors.redAccent],
    [(Icons.manage_search_outlined), 'SEARCH', Colors.pinkAccent],
    [(Icons.terminal_outlined), 'TERMINAL', Colors.yellow],
    [(Icons.switch_access_shortcut), 'SWITCH', Colors.brown],
    [(Icons.assistant_direction), 'DIRECTION', Colors.greenAccent],
    [(Icons.download_done_outlined), 'DOWNLOAD', Colors.blue],
    [(Icons.move_down_outlined), 'MOVE DOWN', Colors.green],
    [(Icons.install_desktop), 'INSTALL DESKTOP', Colors.yellowAccent],
    [(Icons.install_mobile_outlined), 'INSTALL MOBILE', Colors.lightGreen],
    [(Icons.hide_image), 'HIDE', Colors.blueGrey],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PHONE ICONS',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 10),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(20),
                color: cardcontent[index][2],
              ),
              child: Center(
                child: ListTile(
                  leading: Icon(
                    cardcontent[index][0],
                    size: 25,
                  ),
                  title: Text(
                    cardcontent[index][1],
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          },
          itemCount: cardcontent.length,
        ),
      ),
    );
  }
}
