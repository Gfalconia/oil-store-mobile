import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.pink),
          toolbarHeight: 40,
          elevation: 0,
          backgroundColor: Colors.white12,
        ),
        body: Column(children: <Widget>[
          Image(image: AssetImage('assets/images/avocado.jpg')),
          Text('Cosmetics'),
          Row(children: <Widget>[
            Text('Avocado Oil', style: TextStyle(fontSize: 20)),
            Icon(
              Icons.favorite,
              color: Colors.pink,
            ),
          ]),
          Text(
              'Avocado oil functions well as a carrier oil for other flavors. It is high in monounsaturated fats and vitamin E, and also enhances the absorption of carotenoids and other nutrients.'),
          Text('Vitalizing'),
          Text('Antibacterial'),
          Row(children: <Widget>[
            Text('5 AZN'),
            ElevatedButton(onPressed: () {}, child: Text('Add to cart'))
          ])
        ]));
  }
}
