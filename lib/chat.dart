import 'package:bookverse/login_Signup.dart';
import 'package:bookverse/splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(


        useMaterial3: true,
      ),

      debugShowCheckedModeBanner: false,
    );
  }
}

class ChatPage extends StatefulWidget {



  @override
  State<ChatPage> createState() => ChatPageState();
}

class ChatPageState extends State<ChatPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
appBar: AppBar(
backgroundColor: Colors.yellow,
  title: Text('Chat Support',style: TextStyle(color: Colors.brown.shade700,fontWeight: FontWeight.w900
  ,

  ),),

),
        body:Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  color: Colors.grey.shade200,
                  gradient: LinearGradient(colors: [Color(0xffFFFFED ),Color(0xfffee140),])
                ),
                child: Row(

                  children: [
                    Container(
                      width: 250,
                      height: 50,
                      child: TextField(
                                    decoration: InputDecoration(hintText:'Message',hintStyle: TextStyle(color: Colors.grey.shade500,)
,suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.send))

                                    ,border: OutlineInputBorder(

                                      borderRadius: BorderRadius.circular(32),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 10
                                      )

                                    )),
                                  )

                            ),
                    IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.microphone,size: 27,)),
                    IconButton(onPressed: (){}, icon: Icon(FontAwesomeIcons.photoFilm))
                  ],
                ),
              ),
            ],
          ),
        )
 );}}
