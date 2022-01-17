import 'package:bookrentalapp/Views/cart/cart.dart';
import 'package:bookrentalapp/Views/Home%20Screen/Homescreen.dart';
import 'package:bookrentalapp/Views/Login_Sign_up_views/Loginscrren.dart';
import 'package:bookrentalapp/Views/Profile/profile.dart';
import 'package:bookrentalapp/Views/Profile/setting.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget{

  _bottomnavigation createState() => _bottomnavigation();
}

class _bottomnavigation extends State<Bottomnavigation>{
  int _selectedIndex = 0;

   final screenoptions = [
     HomeScreen(),
     Settings(),
     MyHomePage(),
     ProfileScreen(),
   ];

  Widget build(BuildContext buildContext){
    double height  = MediaQuery.of(buildContext).size.height;
    double width = MediaQuery.of(buildContext).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      appBar: AppBar(
        toolbarHeight: 25,
        title: Text(
          "Book Rental",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: screenoptions[_selectedIndex],

        bottomNavigationBar: buildMyNavBar(buildContext)
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xff127EFD),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: (){
              setState(() {
                _selectedIndex = 0;
              });
            },
            icon:  _selectedIndex == 0 ?const Icon(Icons.home_outlined,size: 35,color: Colors.white,) : const Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 35,
            ),
            enableFeedback: false,
          ),

          IconButton(
            onPressed: (){
              setState(() {
                _selectedIndex = 1;
              });
            },
            icon: _selectedIndex == 1 ? Icon(Icons.upload_outlined,size: 35,color: Colors.white,) : const Icon(
              Icons.upload_rounded,
              size: 35,
              color: Colors.white,
            ),
            enableFeedback: false,
          ),
          IconButton(
            onPressed: (){
              setState(() {
                _selectedIndex = 2;
              });
            },
            icon:  _selectedIndex == 2 ?const Icon(Icons.shopping_cart_outlined,size: 30,color: Colors.white,) : const Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 35,
            ),
            enableFeedback: false,
          ),
          IconButton(
            onPressed: (){
              setState(() {
                _selectedIndex = 3;
              });
            },
            icon: _selectedIndex==3 ? Icon(Icons.person_outline_outlined,size: 35,color: Colors.white,) : const Icon(
              Icons.person,
              size: 35,
              color: Colors.white,
            ),
            enableFeedback: false,
          )
        ],
      ),
    );
  }
}
