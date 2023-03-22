import 'dart:async';

import 'package:dictionary_app/home.dart';
import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: Splashscrn(),
//   debugShowCheckedModeBanner: false,));
// }

class Splashscrn extends StatefulWidget {
  @override
  State<Splashscrn> createState() => _SplashscrnState();
}

class _SplashscrnState extends State<Splashscrn> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {     /// function
    return  Scaffold(
      backgroundColor: Colors.black,
        body:Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
              const [
                Image(
                    image: AssetImage("images/dictionary-removebg-preview.png"),height:150,width:150),
                //Image.asset("assets/images/frappe.png"),
                Text("Pocket Dictionary",
                    style: TextStyle(color: Colors.white,fontSize:25,fontStyle: FontStyle.italic,fontWeight:FontWeight.bold)),
              ],
            ),
          ),

    );
  }
}