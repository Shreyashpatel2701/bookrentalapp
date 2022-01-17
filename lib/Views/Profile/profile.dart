import 'package:flutter/material.dart';

void main() {
  runApp(ProfileScreen());
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/avtar.jpeg"),
                maxRadius: 30.0,
                backgroundColor: Colors.black12,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              decoration: const InputDecoration(

                hintText: "ENTER YOUR FIRST NAME",
                labelText: "FIRST NAME",
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
            SizedBox(
              height: 30.0,
            ),
            TextField(
              decoration: const InputDecoration(

                hintText: "ENTER YOUR LAST NAME",
                labelText: "LAST NAME",
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
            SizedBox(
              height: 30.0,
            ),
            TextField(
              decoration: const InputDecoration(

                hintText: "ENTER D.O.B",
                labelText: "D.O.B",
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
            SizedBox(
              height: 30.0,
            ),
            TextField(
              decoration: const InputDecoration(

                hintText: "ENTER EMIAL ADDRESS",
                labelText: "EMAIL ADDRESS",
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
            const SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {  },
              child: const Text("SAVE",style: TextStyle(decorationColor: Colors.black26),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(color: Colors.blue)
                  ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
