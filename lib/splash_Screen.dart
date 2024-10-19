import 'dart:async';
import 'package:bookverse/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => SplashScreenState();

}
  class SplashScreenState extends State<SplashScreen>with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Timer(Duration(seconds: 6), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=> LoginPage()));
    });



  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

          Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(

               //   gradient: LinearGradient(colors: [Color(0xffD4E1F5),Color(0xff009efd)])
              color: Colors.yellowAccent
                ),
                child: Center(
                  child:   Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Icon(Icons.menu_book_rounded,size: 78,
                            color: Colors.brown.shade800,
                            shadows: [Shadow(blurRadius: 1)],)
                       ,Text('BookVerse',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 45,color: Colors.brown.shade800),)


                        ],
                      ),
                    ),
                  ),
                );
  }

  }

