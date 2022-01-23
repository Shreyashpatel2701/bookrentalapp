import 'package:flutter/material.dart';
import'package:bookrentalapp/Views/cart/submit.dart';
import'package:bookrentalapp/Views/cart/cart.dart';


class MyCheckoutPage extends StatefulWidget {
  @override
  _MyCheckoutState createState() => _MyCheckoutState();
}
class _MyCheckoutState extends State<MyCheckoutPage> {

  List picked = [false,false,false];

  int totalAmount = 0;

  pickToggle(index) {
    setState(() {
      picked[index] = !picked[index];
      getTotalAmount();
    });
  }

  getTotalAmount() {
    var count = 0;

    for (int i = 0; i <= picked.length; i++) {
      if (picked[i]) {
        count = count + 1;
      }
      if (i == picked.length - 1) {
        setState(() {
          totalAmount = 200 * count;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(

        backgroundColor: Colors.white,
        body: ListView(shrinkWrap: true, children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
            Stack(children: [
              Stack(children: <Widget>[

                Container(
                  height: 150.0,
                  width: double.infinity,
                  color: Colors.blue,
                ),

                Padding(
                  padding: EdgeInsets.only(top: 15.0),
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
                Positioned(
                    top: 60.0,
                    left: 15.0,
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        fontSize: 30.0,
                        color: Colors.black,
                      ),
                    )),

                Container(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [


                      Container(

                        margin: EdgeInsets.only(top: 200,left: 25,right:25),
                        child : TextField(


                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.add_location),
                            hintText: "ENTER YOUR ADDRESS",
                            labelText: "SHIPPING ADDRESS",
                            contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 10),

                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),


                          ),
                        ),),

                      Container(
                        margin: EdgeInsets.only(left: 10,top:20),
                        child: Text("DELIVERY METHOD",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ),



                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width : width*0.1,
                              height : height*0.1,
                              child: InkWell(
                                onTap: (){},
                                child: Image.asset(
                                  'assets/fed.png',
                                ),
                              ),

                            ),
                            SizedBox(width: 20,),
                            Container(
                              width : width*0.1,
                              height : height*0.1,
                              child: InkWell(
                                onTap: (){},
                                child: Image.asset(
                                  'assets/dtdc.png',
                                ),
                              ),

                            ),
                            SizedBox(width: 20,),
                            Container(
                              width : width*0.1,
                              height : height*0.1,
                              child: InkWell(
                                onTap: (){},
                                child: Image.asset(
                                  'assets/ecom.png',
                                ),
                              ),

                            ),
                          ],
                        ) ,
                      ),
                      SizedBox(height: 20.0, width: 20.0),
                      Container(
                        child: Divider(
                          color: Colors.black,
                        ),),

                      Container(
                        margin: EdgeInsets.only(left: 10,top:30),
                        child: Text("PAYMENT METHOD",textAlign:TextAlign.end ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      ),

                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width : width*0.1,
                              height : height*0.1,
                              child: InkWell(
                                onTap: (){},
                                child: Image.asset(
                                  'assets/mastercard.png',
                                ),
                              ),

                            ),
                            SizedBox(width: 20,),
                            Container(
                              width : width*0.1,
                              height : height*0.1,
                              child: InkWell(
                                onTap: (){},
                                child: Image.asset(
                                  'assets/gpay.jpg',
                                ),
                              ),

                            ),
                            SizedBox(width: 20,),
                            Container(
                              width : width*0.1,
                              height : height*0.1,
                              child: InkWell(
                                onTap: (){},
                                child: Image.asset(
                                  'assets/upi.jpg',
                                ),
                              ),

                            ),
                          ],
                        ) ,
                      ),
                      SizedBox(height: 20.0, width: 20.0),
                      Container(
                        child: Divider(
                          color: Colors.black,
                        ),),


                      Padding(
                          padding: EdgeInsets.only(top: 60.0, bottom: 15.0),
                          child: Container(
                              height: 100.0,
                              width: double.infinity,
                              color: Colors.white,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(

                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [

                                            Text('Order Total: \₹' + totalAmount.toString()),
                                            Text('Delivery Charges: \₹'),
                                            Text('Total:  \₹' + totalAmount.toString()),
                                          ])),

                                  SizedBox(width: 80.0),
                                  Container(

                                      padding: const EdgeInsets.all(20.0),

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
                                          child :Text("Submit Order",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0,color: Colors.white,),),
                                        ),


                                      ) ),
                                ],)))

                    ],  ),),],)

            ])
          ])]));

  }

}