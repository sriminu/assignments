import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        colorScheme:
            ColorScheme.fromSwatch().copyWith(primary: Color(0xff689F38))),
    home: Curosalslider(),
  ));
}

class Curosalslider extends StatelessWidget {
  List sliders = [
    [
      'https://media.istockphoto.com/id/1311051864/photo/vegetarian-food-in-string-bag.jpg?s=612x612&w=0&k=20&c=93BZU2vobRk87b_hJAJRBmM6Bo4il3NpTTOpgqpWPbM='
    ],
    [
      'https://media.istockphoto.com/id/1311051864/photo/vegetarian-food-in-string-bag.jpg?s=612x612&w=0&k=20&c=93BZU2vobRk87b_hJAJRBmM6Bo4il3NpTTOpgqpWPbM='
    ],
    [
      'https://media.istockphoto.com/id/1311051864/photo/vegetarian-food-in-string-bag.jpg?s=612x612&w=0&k=20&c=93BZU2vobRk87b_hJAJRBmM6Bo4il3NpTTOpgqpWPbM='
    ],
  ];
  List bottomnavigation = [
    [(Icons.home), 'HOME', Colors.green],
    [(Icons.home), 'HOME', Colors.green],
    [(Icons.home), 'HOME', Colors.green]
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: CustomScrollView(slivers: [
      SliverAppBar(
        title: Text(
          'FARMERS FRESH ZONE',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.italic,
              color: Colors.white),
        ),
        floating: true,
        pinned: true,
        actions: const [
          Icon(
            Icons.location_on_outlined,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(top: 18),
            child: Text(
              'KOCHI',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
          ),
        ],
        bottom: AppBar(
          title: Container(
            color: Colors.white,
            height: 35,
            width: double.infinity,
            child: const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search for vegetables and fruits'),
            ),
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate([
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.greenAccent,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                height: 30,
                width: 90,
                child: Center(
                    child: Text(
                  'Vegetables',
                  style: TextStyle(
                      color: Colors.lightGreen, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                height: 30,
                width: 60,
                child: Center(
                    child: Text(
                  'Fruits',
                  style: TextStyle(
                      color: Colors.lightGreen, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                height: 30,
                width: 60,
                child: Center(
                    child: Text(
                  'Exotic',
                  style: TextStyle(
                      color: Colors.lightGreen, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.greenAccent),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                height: 30,
                width: 85,
                child: Center(
                    child: Text(
                  'Fresh cuts',
                  style: TextStyle(
                      color: Colors.lightGreen, fontWeight: FontWeight.bold),
                )),
              ),
            ],
          ),
          CarouselSlider(
              items: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/images/main3.jpg'))),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/images/banner2.jpg'))),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/images/main5.jpg'))),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/images/main4.jpg'))),
                ),
              ],
              options: CarouselOptions(
                  viewportFraction: 0.9,
                  height: 200,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.decelerate,
                  autoPlayAnimationDuration: Duration(milliseconds: 900),
                  enableInfiniteScroll: true)),
          SizedBox(
            height: 5,
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                  height: 100,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.greenAccent),
                    borderRadius: BorderRadius.vertical(top: Radius.zero),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              child: Image(
                                  image: AssetImage('assets/images/1.png')),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '30MINS POLICY',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/Untitled-1.png')),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'TRACABILITY',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              child: Image(
                                  image: AssetImage('assets/images/far.png')),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('LOCAL SOURCING',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                  ))),
          SizedBox(
            height: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Shop By Category',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Veggrid(),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey,
            height: 5,
            width: 200,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/banner.jpg'),
            )),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.grey,
            height: 5,
            width: 200,
          ),
          SizedBox(
            height: 5,
          ),
          Text('Best Selling Products'),
          SizedBox(height: 10,),


        ]),
      ),
    ]),
                bottomNavigationBar: BottomNavigationBar(items: [
                 BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.green,),
                 label: 'HOME'
                 ),
                  BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.green,),
                      label: 'HOME'
                  ),
                  BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.green,),
                      label: 'HOME'
                  ),
                ]),
        ),

    );
  }
}

class Veggrid extends StatelessWidget {
  List items = [
    [
      'https://images.unsplash.com/photo-1598030304671-5aa1d6f21128?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHZlZ2V0YWJsZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=2000&q=60',
      'Vegetables'
    ],
    [
      'https://images.unsplash.com/photo-1610832958506-aa56368176cf?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZnJ1aXRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=2000&q=60',
      'Fruits'
    ],
    [
      'https://images.unsplash.com/photo-1526318472351-c75fcf070305?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8RXhvdGljJTIwZnJ1aXRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1633&q=60',
      'Exotic'
    ],
    [
      'https://media.istockphoto.com/id/640107874/photo/unrecognized-women-preparing-fresh-healthy-salad.jpg?b=1&s=170667a&w=0&k=20&c=fQmOCm9_A_vAB9NcCckY8WcEEkr77amb5Z4UEIyZLKQ=',
      'Fresh Cuts'
    ],
    [
      'https://images.unsplash.com/photo-1505576399279-565b52d4ac71?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8TlVUUklUSU9OfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=2000&q=60',
      'Nutrition Charges'
    ],
    [
      'https://media.istockphoto.com/id/520360050/photo/spices-at-the-table.jpg?s=612x612&w=0&k=20&c=JgC8XwZZljDadrC33kWwkFindyhLlZn6iRFMk6X17XE=',
      'Packed Flavours'
    ],
    [
      'https://media.istockphoto.com/id/598567824/photo/homemade-autumn-apple-walnut-spinach-salad.jpg?s=612x612&w=0&k=20&c=EjFr4J0xf5a4TN-uxfR2Uez_TC4iC-R2FDT5-5FTGi4=',
      'Salads'
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 5),
      itemBuilder: (BuildContext, int index) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 10,
              child: Container(
                height: 90,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: NetworkImage(items[index][0]),
                        fit: BoxFit.cover)),
              ),
            ),
            Center(child: Text(items[index][1]))
          ],
        );
      },
      itemCount: items.length,
    );
  }
}
