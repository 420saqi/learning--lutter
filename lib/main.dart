// import 'package:codpurplaylist/homepage.dart';
import 'package:codpurplaylist/homepage.dart';
import 'package:codpurplaylist/myRoutes.dart';
import 'package:flutter/material.dart';

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
      home:  LoginPage(),

    );
  }
}
class LoginPage extends StatefulWidget {
State<StatefulWidget> createState()=>LoginPageState();
}
class LoginPageState extends State<StatefulWidget>
{
TextEditingController username= TextEditingController();
TextEditingController password= TextEditingController();
var msg= "";
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title:Icon(Icons.photo),
      ),
      body: Column(
        children: [
            Container(
              height: 200,
              width: double.infinity,
              child: Image.asset('assets/logo.png',
              fit: BoxFit.contain
              ),
            ),

          SizedBox(
            height: 20,
          ),

          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                TextField(
                  controller: username,
                  decoration: InputDecoration(
                    label: Text('Enter usegrname'),
                  ),
                ),
                TextField(
                      controller: password,
                  decoration: InputDecoration(
                    label: Text('Enter Password'),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(

            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(
                   width: 1,

                ),

              )
            ),
              onPressed: (){
              if(username.text.toString()!= '' && password.text.toString()!= ''){Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>HomePage()));}
              else{
                msg=' Pleaser enter required fields';
              }
              setState(() {

              });
              }, child: Text('Login'),

          ),
          SizedBox(height: 20,),

            Text(msg, style: TextStyle(color: Colors.red, fontSize: 20
            , fontWeight: FontWeight.bold),),

// TextButton(onPressed: (){
//   print(username.text.toString());
// }, child: Text('controller value'))
        ],
      ),
      drawer: Drawer(),
    );
  }
}

