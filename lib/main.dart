import 'package:flutter/material.dart';
import 'product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BuildContext context;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _widgetOptions = <Widget>[
    SingleChildScrollView(
        child: Container(
            height: 400,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(10),
                ),
                child: Container(
                    alignment: AlignmentDirectional.bottomStart,
                    width: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/images/oil1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text('Olive oil',
                        style: TextStyle(color: Colors.white, fontSize: 35))),
              ),
              Card(
                child: Container(
                    alignment: AlignmentDirectional.bottomStart,
                    width: 300.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/avocado.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Text('Avocado oil',
                        style: TextStyle(color: Colors.white, fontSize: 35))),
              ),
            ]))),
    Container(),
    Container(),
    Container()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        //toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
            child: Text(
          'Натуральные масла',
          style: TextStyle(color: Colors.black, fontSize: 20),
        )),
        // Text('Масло пищевое',
        //     style: TextStyle(
        //         color: Colors.black,
        //         fontSize: 40,
        //         fontWeight: FontWeight.bold)),
        // actions: <Widget>[
        //   Container(
        //     width: 100,
        //   )
        // ],
      ),
      body: Column(children: <Widget>[
        Padding(
            padding: EdgeInsets.all(10),
            child: TextFormField(
                decoration: InputDecoration(
              filled: true,
              hintText: 'Найдите масло',
              contentPadding:
                  EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15.7),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(15.7),
              ),
            ))),
        Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(10)),
                    child: Container(
                        alignment: AlignmentDirectional.center,
                        width: 160.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(10),
                          image: DecorationImage(
                            image: AssetImage("assets/images/category1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                            color: Colors.blue,
                            child: Text(
                              'Cosmetic',
                              style: TextStyle(color: Colors.white),
                            )))),
                Card(
                    child: Container(
                        alignment: AlignmentDirectional.center,
                        width: 160.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/category2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                            color: Colors.pink,
                            child: Text(
                              'Aroma',
                              style: TextStyle(color: Colors.white),
                            )))),
                Card(
                    child: Container(
                        alignment: AlignmentDirectional.center,
                        width: 160.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/category3.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                            color: Colors.amber,
                            child: Text(
                              'For food',
                              style: TextStyle(color: Colors.white),
                            )))),
              ],
            )),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Product()),
              );
            },
            child: Center(child: _widgetOptions.elementAt(_selectedIndex)))
      ]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedFontSize: 25,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.pink,
            ),
            label: '.',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.pink,
            ),
            label: '.',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_grocery_store_outlined,
              color: Colors.pink,
            ),
            label: '.',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outlined,
              color: Colors.pink,
            ),
            label: '.',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.pink,
        onTap: _onItemTapped,
      ),
    );
  }
}
