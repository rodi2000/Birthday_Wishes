import 'package:birthday/friends.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
            child: Image.asset('images/Happy_Birthday.jpg')
        ),
        Positioned(
          top: 400,
          left: 90,
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 200,
            child: Text('Name', style: TextStyle(fontFamily: 'Patrick Hand',fontSize: 40,decoration: TextDecoration.none, color: Colors.black87)),
          ),
        ),
        Positioned(
          top: 585,
          bottom: 50,
          left: 130,
          child: GestureDetector(
            child: Image.asset('images/Gift.jpeg'),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) => Friends());
              Navigator.push(context, route);
            }
          ),
        ),
      ],
    );
  }
}
