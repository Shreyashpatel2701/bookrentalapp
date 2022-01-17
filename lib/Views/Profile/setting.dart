import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import'package:bookrentalapp/Views/cart/cart.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}


class _SettingsState extends State<Settings> {
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children:<Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15.0,right: 150),
                    child: IconButton(
                        alignment: Alignment.topLeft,
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyHomePage()),
                          );
                        }),
                  ),
                  Container(

                    child: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
                  ),

                  Container(
                    margin: EdgeInsets.only(top:40),
                    child: Text("Personal Information",style: TextStyle(fontSize: 20),),
                  ),
                  Container(

                    margin: EdgeInsets.only(top: 15,left: 25,right:25),
                    color: Colors.white,
                    child : TextField(


                      decoration: InputDecoration(

                        hintText: "ENTER YOUR NAME",
                        labelText: " FULL NAME",
                        contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),


                      ),
                    ),),
                  Container(

                    margin: EdgeInsets.only(top: 15,left: 25,right:25),
                    color: Colors.white,
                    child : TextField(


                      decoration: InputDecoration(

                        hintText: "ENTER YOUR BIRTH DATE",
                        labelText: " DD/MM/YY",
                        contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),


                      ),
                    ),),
                  Container(
                    margin: EdgeInsets.only(top:60),
                    child: Text("Password",style: TextStyle(fontSize: 20),),
                  ),
                  Container(

                    margin: EdgeInsets.only(top: 15,left: 25,right:25),
                    color: Colors.white,
                    child : TextField(


                      decoration: InputDecoration(

                        hintText: "ENTER YOUR PASSWORD",
                        labelText: " PASSWORD",
                        contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),

                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                        ),


                      ),
                    ),),
                  Container(
                    margin: EdgeInsets.only(top:60),
                    child: Text("Notification",style: TextStyle(fontSize: 20),),
                  ),
                ] )
        ),

      ),);

  }
}

