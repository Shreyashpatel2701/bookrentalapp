import 'package:bookrentalapp/Views/Login_Sign_up_views/Loginscrren.dart';
import 'package:bookrentalapp/Views/Login_Sign_up_views/SignupScreen.dart';
import 'package:flutter/material.dart';

class tab_for_signup extends StatefulWidget{
  _tab_for_signup  createState() =>  _tab_for_signup();
}

class _tab_for_signup extends State<tab_for_signup>{
  Widget build(BuildContext){
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueAccent,

        title: TabBar(
          isScrollable: false,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.blueGrey,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            color:  Colors.blueAccent,
          ),
          tabs: [
            Tab(
              icon: Icon(Icons.person_add,color: Colors.white,),
              child: Align(
                alignment: Alignment.center,
                child: Text("Signup"),
              ),
            ),
            Tab(
              icon: Icon(Icons.login,color: Colors.white,),
              child: Align(

                alignment: Alignment.center,
                child: Text("Login"),
              ),
            ),
          ],
        ),
      ) ,
      body: TabBarView(
        children: [
          SignupScreen(),
          LoginScreen(),
        ],
      ),
    ));
  }
}