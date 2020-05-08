import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:birthday/detailpage.dart';

class Friends extends StatefulWidget {
  @override
  _FriendsState createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {

  List<String> list = ['Aquaman', 'Black Panther', 'Black Widow', 'Doctor Strange', 'Flash', 'Hulk', 'Iron-Man', 'Spider-Man','Super-Man', 'Thor'];

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white12);
    return Scaffold(
      appBar: AppBar(
        title: Text('Friends',
            style: TextStyle(fontFamily: 'Pacifico',fontSize: 25)
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: ListView.builder(
        itemCount: list.length,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Card(
//            color: Colors.black12,
            elevation: 7.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('images/${list[index]}/0.jpg'),
                  radius: 25,
                  backgroundColor: Colors.black87,
                  foregroundColor: Colors.white,
                ),
                title: Text(list[index],
                    style: TextStyle(fontFamily: 'Mc Laren', fontSize: 22)
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                  Route route = MaterialPageRoute(builder: (context) => DetailPage(list[index]));
                  Navigator.push(context, route);
                },
              ),
            ),

          );
        },
      )

    );
  }
}
