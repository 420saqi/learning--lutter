import 'package:flutter/material.dart';
import 'package:codpurplaylist/myRoutes.dart';

import 'main.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomePage(),
      routes: {
        '/': (context)=>LoginPage(),
        myRoutes.homeroute: (context)=>HomePage(),
        myRoutes.loginroute: (context)=>LoginPage()
      },
    );
  }
}
class HomePage extends StatefulWidget {
  State<StatefulWidget> createState()=>HomePageState();
}
class HomePageState extends State<StatefulWidget>
{

  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title:Icon(Icons.photo),
      ),

      body: Hero(
        tag: 'heroanimation',
        child: Container(
          height: 200,
          width: 200,
          color: Colors.red,
        ),
      ),

      drawer: Drawer(),
    );
  }
}

