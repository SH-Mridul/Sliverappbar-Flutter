import 'package:MusicApp/pages/PageOne.dart';
import 'package:MusicApp/pages/PageTwo.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home : HomePage()
  ));


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            backgroundColor: Colors.purple,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Sliver App Bar'),
            ),
          ),

          SliverList(delegate: SliverChildListDelegate(
            <Widget>[
              addDetails('Mridul', 'Name Of Programmer'),
              addDetails('Mridul', 'Name Of Programmer'),
              addDetails('Mridul', 'Name Of Programmer'),
              addDetails('Mridul', 'Name Of Programmer'),
              addDetails('Mridul', 'Name Of Programmer'),
              addDetails('Mridul', 'Name Of Programmer'),
              addDetails('Mridul', 'Name Of Programmer'),
              addDetails('Mridul', 'Name Of Programmer'),
              addDetails('Mridul', 'Name Of Programmer'),
              addDetails('Mridul', 'Name Of Programmer'),
              addDetails('Mridul', 'Name Of Programmer'),
              addDetails('Mridul', 'Name Of Programmer'),
              addDetails('Mridul', 'Name Of Programmer'),
            ]
          )),
        ],
      ),
    );
  }
}

Widget addDetails(String name, String discription){
  return  Card(
      child: ListTile(
        title: Text(name),
        dense: true,
        subtitle: Text(discription),
        leading: CircleAvatar(
          child: Text(name[0]),
          backgroundColor: Colors.black,
        ),
      ),
    );
}