import 'package:flutter/material.dart';

class Profileuii extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    List Details = [
      [Icons.privacy_tip_outlined, 'Privacy'],
      [Icons.history_outlined, 'History'],
      [Icons.help_outline_outlined, 'Help & Support'],
      [Icons.settings, 'Settings'],
      [Icons.person, 'Invite a friend'],
      [Icons.privacy_tip_outlined, 'Privacy'],
      [Icons.history_outlined, 'History'],
      [Icons.help_outline_outlined, 'Help & Support'],
      [Icons.settings, 'Settings'],
      [Icons.person, 'Invite a friend'],

    ];
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
elevation: 50,
       title: TextField(
         decoration: InputDecoration(
       border: InputBorder.none,
          suffixIcon:  Icon(Icons.menu, color: Colors.black,),
           prefixIcon: Icon(Icons.arrow_back, color: Colors.black,)
       ),

         ),

     ),
     body: Column(
       children: [ Padding(
         padding: const EdgeInsets.all(15),
         child: Center(
           child: CircleAvatar(
             backgroundImage: NetworkImage('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
             radius: 60,
           ),
         ),
       ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             CircleAvatar(
                 radius: 25,
                 child: Image.asset('assets/images/3225194_app_facebook_logo_media_popular_icon.png')
                 ),
             CircleAvatar(
                 radius: 25,
                 child: Image.asset('assets/images/3225183_app_logo_media_popular_social_icon.png')
             ),
             CircleAvatar(
                 radius: 25,
                 child: Image.asset('assets/images/3225190_app_linkedin_logo_media_popular_icon.png')
             ),
             CircleAvatar(
                 radius: 25,
                 child: Image.asset('assets/images/394187_github_icon.png')
             ),

           ],
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             children: [
               Text('IVANA', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
               Text('@weberror', style: TextStyle( fontSize: 15),),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('Mobile App Developer', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
               ),
            ]
           ),
         ),
SizedBox(height: 20,),

    Expanded(
        child: ListView.separated(itemBuilder: (context, index) => Container(

          decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(50)


          ),
          child: ListTile(
            leading: Icon(Details[index][0]),
            title: Text(Details[index][1]),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
        )
            , separatorBuilder: (context, int index) => SizedBox(
              height: 15,
            ),
            itemCount: Details.length)



    )




       ],
)

   );


   
  }

}