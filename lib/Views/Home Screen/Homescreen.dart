import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{

  _homescreen createState() => _homescreen();
}

class _homescreen extends State<HomeScreen>{
  Widget build(BuildContext buildContext){
    double height = MediaQuery.of(buildContext).size.height;
    double width =  MediaQuery.of(buildContext).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              SizedBox(height: 5,),

            Container(
             width: width,
             child : TextField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(
                    color: Colors.blueAccent,
                  )
                ),
                prefixIcon: Icon(Icons.search),
                labelText: "Search",
                contentPadding:  EdgeInsets.symmetric(vertical: 0,horizontal: 10),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(
                    color: Colors.blueAccent,
                    
                  )
                )
                
              ),
            ),
            ),


              SizedBox(height: 50,),


             Container(
               child: Row(
                 children: <Widget>[
                   Container(
                     child: Text("Recommended For you",style: TextStyle(fontWeight: FontWeight.bold),),
                   ),
                   Flexible(fit: FlexFit.tight, child: SizedBox()),
                   Container(
                       child: InkWell(
                         onTap: (){},
                         child: Text("See more",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.blue),),

                       )
                   ),
                 ],
               ),
             ),


              SizedBox(height: 50,),

              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text("Best Seller",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Flexible(fit: FlexFit.tight, child: SizedBox()),
                    Container(
                        child: InkWell(
                          onTap: (){},
                          child: Text("See more",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.blue),),

                        )
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50,),

              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text("New Releases",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Flexible(fit: FlexFit.tight, child: SizedBox()),
                    Container(
                      child: InkWell(
                      onTap: (){},
                      child: Text("See more",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.blue),),

                      )
                    ),
                  ],
                ),
              ),

              SizedBox(height: 50,),

              Container(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text("Tending Now",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Flexible(fit: FlexFit.tight, child: SizedBox()),
                    Container(
                      child: InkWell(
                        onTap: (){},
                        child :Text("See more",style: TextStyle(fontWeight: FontWeight.normal,color: Colors.blue),),
                      )
                    ),
                  ],
                ),
              ),


            ],

          ),
        ),
      ),

    );
  }
}