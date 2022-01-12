import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';

class LoginScreen extends StatefulWidget{

  _loginscrren createState() => _loginscrren();
}

class _loginscrren extends State<LoginScreen>{
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  Widget build(BuildContext buildContext){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: height*0.3,
                width: height*0.3,
                padding: EdgeInsets.symmetric(
                  vertical: 10
                ),
                child:Image.asset('assets/readingbook.gif') ,
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text("Login into Your Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              ),

              SizedBox(height: 15),

              Container(
              width: width *0.8,
                child : TextField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: "ENTER YOUR EMAIL",
                  labelText: "EMAIL",
                  contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueAccent,
                    ),

                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueAccent)
                  ),
                ),
              ),
              ),
               SizedBox(height: 10),
              
               Container(
                width: width *0.8,
                child : TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "ENTER YOUR PASSWORD",
                    labelText: "PASSWORD",
                    contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueAccent,
                      ),

                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent)
                    ),
                  ),
                ),
              ),
               SizedBox(height: 10),
              
              Container(
                width: width*0.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text("Forgot Password ?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.redAccent),),
                  ),
                ],
              ),  
              ),

              Container(

                width: width*0.8,
                child: ElevatedButton(
                  onPressed: () {  },
                  child: Text("Login",style: TextStyle(decorationColor: Colors.white),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xff127EFD)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Color(0xff127EFD))
                      ),),
                   ),
                ),
              ),

              SizedBox(height: 10,),
              Container(
                child: Text("or Login With",style: TextStyle(fontWeight: FontWeight.bold),),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width : width*0.1,
                       height : height*0.1,
                      child: InkWell(
                        onTap: (){},
                        child: Image.asset(
                          'assets/Google.jpg',
                        ),
                      ),

                    ),
                   SizedBox(width: 25,),
                    Container(
                      width : width*0.1,
                      height : height*0.1,
                      child: InkWell(
                        onTap: (){},
                        child: Image.asset(
                          'assets/apple.png',
                        ),
                      ),

                    ),
                  ],
                ) ,
              ),

              Container(),

              Container(),

            ],
          ),
        ),
      ),
    );
  }
}