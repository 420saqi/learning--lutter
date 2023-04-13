// import 'package:codpurplaylist/homepage.dart';
import 'dart:async';

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
var getvalue;
bool check = false;
gotologin(BuildContext context)async{
  if(mykey.currentState!.validate()) {
    setState(() {
      check = true;
// Timer(Duration(milliseconds: 1500), () {
//   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
//
// });
    });
    await Future.delayed(Duration(milliseconds: 1500));
    await Navigator.push(context,
      MaterialPageRoute(builder: (context) => HomePage()),);
    setState(() {
      check = false;
    });
  }
}
var mykey = GlobalKey<FormState>();
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title:Icon(Icons.photo),
      ),
      body: Form(
        key: mykey,
        child: Column(
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

          Text('Welocme $getvalue',style:TextStyle(fontWeight: FontWeight.bold,
          fontSize: 20,color: Colors.black)),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  TextFormField(

                    // controller: username,
                    onChanged: (value){
                        getvalue =value;
                        setState(() {

                        });
                    },
                    decoration: InputDecoration(
                      label: Text('Enter usegrname'),
                    ),
                    validator: (value){
                      if(value!.isEmpty)
                      {
                        return "Username is required";
                      }
                      else
                      {
                        return null;
                      }
                    },

                  ),
                  TextFormField(
                        // controller: password,
                        validator: (value) {
                          if(value!.isEmpty)
                            {
                              return 'Password is requiered';
                            }
                          else{
                          return null;}

                        },
                    decoration: InputDecoration(
                      label: Text('Enter Password'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),

Material(
  color: Colors.blue,
  borderRadius:  BorderRadius.circular(check ? 50: 20),
  child:   InkWell(
    onTap:()=>gotologin(context),
    child:   AnimatedContainer(duration: Duration(seconds: 1),
    height: check ? 50 : 60,
        width: check ? 50 : 100,
        child: Center(child: check ?  Icon(Icons.done): Text('Login',style:TextStyle(fontWeight: FontWeight.bold,
            fontSize: 20,color: Colors.white))),
    ),
  ),
),
            // ElevatedButton(
            //
            //   style: ElevatedButton.styleFrom(
            //       padding: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 20),
            //       shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(8),
            //       side: BorderSide(
            //          width: 1,
            //
            //       ),
            //
            //     )
            //   ),
            //     onPressed: (){
            //     if(username.text.toString()!= '' && password.text.toString()!= ''){Navigator.push(context,
            //         MaterialPageRoute(builder: (context)=>HomePage()));}
            //     else{
            //       msg=' Pleaser enter required fields';
            //     }
            //     setState(() {
            //
            //     });
            //     }, child: Text('Login'),
            //
            // ),



            SizedBox(height: 20,),

              Text(msg, style: TextStyle(color: Colors.red, fontSize: 20
              , fontWeight: FontWeight.bold),),

// TextButton(onPressed: (){
//   print(username.text.toString());
// }, child: Text('controller value'))
          ],
        ),
      ),
      drawer: Drawer(),
    );
  }
}

