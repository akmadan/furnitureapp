import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    color: Color(0xFFFDD148),
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Color(0xFFFEE16D).withOpacity(0.4)),
                    ),
                  ),
                  Positioned(
                    top: 30.0,
                    left: 160.0,
                    child: Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150.0),
                            color: Color(0xFFFEE16D).withOpacity(0.5))),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                image: DecorationImage(
                                    image: AssetImage('assets/chris.jpg'))),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 120,
                          ),
                          Container(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.menu),
                                color: Colors.white,
                                iconSize: 30.0,
                              )),
                          SizedBox(height: 15.0),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Text(
                          "What do you want to Buy ?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(5.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xFFFEDF62),
                                  size: 30.0,
                                ),
                                contentPadding:
                                    EdgeInsets.only(left: 15.0, top: 15.0),
                                hintText: "Search",
                                hintStyle: TextStyle(color: Colors.grey)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Stack(
                children: [
                  SizedBox(height: 10.0),
                  Material(
                    elevation: 1.0,
                    child: Container(
                      height: 75.0,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 75.0,
                            width: MediaQuery.of(context).size.width / 4,
                            child: Column(
                              children: [
                                Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/sofas.png"))),
                                ),
                                Text("Sofas")
                              ],
                            ),
                          ),
                          Container(
                            height: 75.0,
                            width: MediaQuery.of(context).size.width / 4,
                            child: Column(
                              children: [
                                Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/dressers.png"))),
                                ),
                                Text("Dressers")
                              ],
                            ),
                          ),
                          Container(
                            height: 75.0,
                            width: MediaQuery.of(context).size.width / 4,
                            child: Column(
                              children: [
                                Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/wardrobe.png"))),
                                ),
                                Text("Wardrobe")
                              ],
                            ),
                          ),
                          Container(
                            height: 75.0,
                            width: MediaQuery.of(context).size.width / 4,
                            child: Column(
                              children: [
                                Container(
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/desk.png"))),
                                ),
                                Text("Desks")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              itemCard('FinnNavian', 'assets/ottoman.jpg', false),
              itemCard('FinnNavian', 'assets/anotherchair.jpg', true),
              itemCard('FinnNavian', 'assets/chair.jpg', true)
            ],
          )
        ],
      ),
      bottomNavigationBar: Material(
        elevation: 2.0,
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.yellow,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.event_seat, color: Colors.yellow)),
            Tab(icon: Icon(Icons.timer, color: Colors.grey)),
            Tab(icon: Icon(Icons.shopping_cart, color: Colors.grey)),
            Tab(icon: Icon(Icons.person_outline, color: Colors.grey))
          ],
        ),
      ),
    );
  }

  Widget itemCard(String title, String imgPath, bool isFavorite) {
    return Material(
      elevation: 10.0,
      child: Padding(
        padding:
            EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0, bottom: 15.0),
        child: Container(
          height: 150.0,
          width: double.infinity,
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                width: 140.0,
                height: 150.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover)),
              ),
              SizedBox(width: 4.0),
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 45.0),
                      Material(
                        elevation: isFavorite ? 0.0 : 2.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              color: isFavorite
                                  ? Colors.grey.withOpacity(0.2)
                                  : Colors.white),
                          child: Center(
                            child: isFavorite
                                ? Icon(Icons.favorite_border)
                                : Icon(Icons.favorite, color: Colors.red),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Container(
                    width: 175.0,
                    child: Text(
                      'Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          color: Colors.grey,
                          fontSize: 12.0),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 35.0),
                      Container(
                        height: 40.0,
                        width: 50.0,
                        color: Color(0xFFF9C335),
                        child: Center(
                          child: Text(
                            '\$248',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        height: 40.0,
                        width: 100.0,
                        color: Color(0xFFFEDD59),
                        child: Center(
                          child: Text(
                            'Add to cart',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
