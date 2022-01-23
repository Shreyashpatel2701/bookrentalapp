
import 'package:flutter/material.dart';
import'package:bookrentalapp/Views/cart/cart.dart';
import'package:bookrentalapp/Views/Profile/setting.dart';




class SubmitPage extends StatefulWidget {

  _SubmitPageState createState() => _SubmitPageState ();
}
class _SubmitPageState extends State<SubmitPage> {

  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[

              Container(
                margin: EdgeInsets.only(left: 50,top:100,right: 50),
                child: Image.asset(
                  'assets/success.jpg',cacheHeight: 200,cacheWidth: 200,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30,top:60,right: 30),
                child: Text("SUCCESS!",textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ),
              Container(
                margin: EdgeInsets.only(left: 30,top:40,right: 30),
                child: Text("YOUR BOOK WILL BE DELIVERED SOON\nTHANK YOU FOR CHOOSING OUR APP",textAlign:TextAlign.center,style: TextStyle(fontSize: 16),),
              ),
              SizedBox(width: 80.0),
              Container(
                  margin: EdgeInsets.only(left: 60,top:100,right: 60),
                  padding: const EdgeInsets.all(40.0),

                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(200))
                  ),

                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SubmitPage()),
                      );
                    },

                    child: Center(
                      child :Text("Continue Reading",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Colors.white,),),
                    ),


                  ) ),




            ],
          ) ,
        ),
      ),
    );

  }
}