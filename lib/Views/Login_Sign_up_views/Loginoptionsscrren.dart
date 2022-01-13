import 'package:bookrentalapp/Views/Login_Sign_up_views/loginsignuptab.dart';
import 'package:flutter/material.dart';
import 'package:auth_buttons/auth_buttons.dart';

class Loginoptionsscreen extends StatefulWidget {

  @override
  _loginoptionsscreen createState() => _loginoptionsscreen();
}


class _loginoptionsscreen extends State<Loginoptionsscreen>{
  Widget build(BuildContext buildContext){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                   vertical: 10
                  ),
                  height: height*0.4,
                  width:  width*0.4,
                  child: Image.asset('assets/readingbook.gif'),
                ),

                Container(
                  child: const Text("How Would You Like To Register?",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10
                  ),
                  child: const Text("Create Account to read and share the best books",style: TextStyle(fontWeight: FontWeight.normal),),
                ),
                const SizedBox(height: 35,),

                GoogleAuthButton(
                  onPressed: () async {},
                  text: "Continue With Google",
                ),

                const SizedBox(height: 15,),
                AppleAuthButton(
                  onPressed: (){},
                  text: "Continue With Apple",
                ),
                const SizedBox(height: 15,),
                Container(
                  width: width *0.6,
                  height: height*0.04,
                  child: ElevatedButton.icon(
                    onPressed: (){   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => tab_for_signup()),
                    );},
                   label: const Text("Continue with email",textAlign: TextAlign.center,style: TextStyle(
                      color: Colors.black87
                     ),),
                    icon: const Icon(Icons.email,color: Colors.blueAccent,),
                     style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.0),
                       side: const BorderSide(color: Colors.white)
                      ),),
                    ),
                  ),
                 ),
                const SizedBox(height: 10,),

                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10
                  ),
                  child: const Text("Already Part Of community?"),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5
                  ),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => tab_for_signup()),
                      );
                    },
                    child :const Text("Login Here",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 12.0),),

                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}