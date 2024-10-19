import 'dart:async';
import 'package:bookverse/main.dart';
import 'package:flutter/material.dart';
import 'package:bookverse/homePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginSignup extends StatefulWidget {

  @override
  State<LoginSignup> createState() => LoginSignupState();

}
class LoginSignupState extends State<LoginSignup>{

  @override
  void initState() {

    super.initState();



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Colors.yellow,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
         child:Center(
    child: SingleChildScrollView(
    scrollDirection: Axis.vertical,

    child: Column(
mainAxisAlignment: MainAxisAlignment.start,
    children: [


 Padding(
   padding: const EdgeInsets.only(top:38),
   child: Icon(Icons.menu_book_rounded,size: 78,
          color: Colors.brown.shade800,
          shadows: [Shadow(blurRadius: 1)],),
 ),


   Padding(
     padding: const EdgeInsets.only(top: 19,bottom: 20),
     child: Container(width: 340,
        height: 600,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(21),
        ),
            child: Column(
              children: [
                Text("Let's create your account!!!",style: TextStyle
                  (fontWeight: FontWeight.w800,fontSize: 20,color: Colors.brown.shade700),),
                Divider(
                  height: 5,

                  thickness: 2,
                  indent: 9,
endIndent: 9,
                  color: Colors.grey.shade400,
                ),
       Padding(
         padding: const EdgeInsets.only(top: 9),
         child: TextFormField(
           keyboardType: TextInputType.name,
           decoration: InputDecoration(
             labelText: 'Name*',labelStyle: TextStyle(color: Colors.brown.shade700),
           ),
           validator: (value) {
             if (value == null || value.isEmpty) {
               return 'Please enter your name';
             }
             return null;
           },
         ),
       ),
       TextFormField(
         keyboardType: TextInputType.emailAddress,
         decoration: InputDecoration(
           labelText: 'E-mail*',labelStyle: TextStyle(color: Colors.brown.shade700),

         ),
         validator: (value) {
           if (value == null || value.isEmpty) {
             return 'Please enter your email';
           }
           return null;
         },
       ),
       TextFormField(
         decoration: InputDecoration(
           labelText: 'Password*',labelStyle: TextStyle(color: Colors.brown.shade700),
           suffixIcon: Icon(Icons.lock),

         ),
         obscureText: true,
         validator: (value) {
           if (value == null || value.isEmpty) {
             return 'Please enter your password';
           }
           return null;
         },
       ),
       TextFormField(
         decoration: InputDecoration(
           labelText: 'Address*',labelStyle: TextStyle(color: Colors.brown.shade700),
         ),
         validator: (value) {
           if (value == null || value.isEmpty) {
             return 'Please enter your address';
           }
           return null;
         },
       ),
       TextFormField(
         decoration: InputDecoration(
           labelText: 'City*',labelStyle: TextStyle(color: Colors.brown.shade700),
         ),
         validator: (value) {
           if (value == null || value.isEmpty) {
             return 'Please enter your city';
           }
           return null;
         },
       ),
       TextFormField(
         decoration: InputDecoration(
           labelText: 'State*',labelStyle: TextStyle(color: Colors.brown.shade700),
         ),
         validator: (value) {
           if (value == null || value.isEmpty) {
             return 'Please enter your state';
           }
           return null;
         },
       ),
       TextFormField(
         keyboardType: TextInputType.phone,
         decoration: InputDecoration(
           labelText: 'Mob.no.*',labelStyle: TextStyle(color: Colors.brown.shade700),
         ),
         validator: (value) {
           if (value == null || value.isEmpty) {
             return 'Please enter your mobile number';
           }
           return null;
         },
       ),
       SizedBox(height: 20),
       Center(
         child: Container(
           width: 180,

           child: ElevatedButton(
             style: ElevatedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent// Background color
             ),
             onPressed: () {
                {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context)=>HomePage()));
                 // Process data.
               }
             },
             child: Text('Sign In',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
           ),
         ),
       ),
       SizedBox(height: 20),
       Center(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               'Already have an account? ',
               style: TextStyle(fontSize: 16),
             ),
             InkWell(
                 onTap: (){


                   Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                 },

                 child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.lightBlueAccent),))
           ],
         ),

            ) ,





   ]  ),
   ),



    )]))
    )
    )
         )


    );
  }

}

