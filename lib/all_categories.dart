import 'package:bookverse/homePage.dart';
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
  
      debugShowCheckedModeBanner: false,);
  }
}

class AllCategoriesPage extends StatefulWidget {



  @override
  State<AllCategoriesPage> createState() => AllCategoriesPageState();
}

class AllCategoriesPageState extends State<AllCategoriesPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text('All Categories',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Colors.brown.shade700),),
      ),

        body:SingleChildScrollView(

          child: Column(
            children: [
          SizedBox(height: 10,),
              Row(
                children: [
                  SizedBox(width: 4),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
          
          
                      height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xfff9f047),Color(0xff0fd850),])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:Container(width: 80,height: 80,child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/school.png'),),)
                            ),
                            Text('School',style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),
          
                          ],
                        ),
                      ),
          
                    ),
                  ),
 Padding(
 padding: const EdgeInsets.all(8.0),
        child: Container(
          height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xfff9d423),Color(0xfff83600)])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:Container(width: 80,height: 80,child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/prototype.png'),),)
                            ),
                            Text('Engineering',style:
                            TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),


                          ],
                        ),
                      ),
          
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 4,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
          
          
                      height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xffE3FDF5),Color(0xffFFE6FA)])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:Container(width: 80,height: 80,child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/atom.png'),),)
                            ),
                            Text('Science',style: TextStyle
                              (fontSize: 16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),


                          ],
                        ),
                      ),
          
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
          
          
                      height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xff00ecbc),Color(0xff007adf)])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:Container(width: 80,height: 80,child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/maths.png'),),)
                            ),
                            Text('Mathematics',style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),



                          ],
                        ),
                      ),
          
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 4,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
          
          
                      height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xfff093fb),Color(0xfff5576c)])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:Container(width:
                                80,height: 80,child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/shakespeare.png'),),)
                            ),
                            Text('Literature',style: TextStyle(fontSize:
                            16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),

                          ],
                        ),
                      ),
          
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
          
          
                      height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xffa1c4fd),Color(0xffc2e9fb)])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:Container(width: 80,height: 80,child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/history.png'),),)
                            ),
                            Text('Art & History',style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),


                          ],
                        ),
                      ),
          
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 4,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
          
          
                      height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xffd299c2),Color(0xfffef9d7)])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:Container(width: 80,height: 80,child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/meeting.png'),),)
                            ),
                            Text('Business',style: TextStyle(fontSize:
                            16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),


                          ],
                        ),
                      ),
          
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
          
          
                      height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xffffb199),Color(0xffff0844)])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:Container(width: 80,height: 80,child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/compliant.png'),),)
                            ),
                            Text('Law',style: TextStyle(fontSize: 16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),


                          ],
                        ),
                      ),
          
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 4,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
          
          
                      height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xff21d4fd),Color(0xffb721ff)])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:Container(width: 80,height: 80,child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/virtual-reality.png'),),)
                            ),
                            Text('Tech',style: TextStyle(fontSize:  16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),


                          ],
                        ),
                      ),
          
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
          
          
                      height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xffffc3a0),Color(0xff50cc7f)])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:Container(width: 80,height: 80,child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/medical-team.png'),),)
                            ),
                            Text('Medical',style: TextStyle(fontSize:
                            16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),


                          ],
                        ),
                      ),
          
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 4,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
          
          
                      height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xffdfe9f3),Color(0xfff9d423)])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:Container(width: 80,height: 80,child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/languages.png'),),)
                            ),
                            Text('Languages',style: TextStyle(fontSize:
                            16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),


                          ],
                        ),
                      ),
          
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
          
          
                      height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xff8ddad5),Color(0xff00cdac)])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:Container(width: 80,height: 80,child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/notes.png'),),)
                            ),
                            Text('Notes',style: TextStyle(fontSize:
                            16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),


                          ],
                        ),
                      ),
          
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 4),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
          
          
                      height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xffffb199),Color(0xff93a5cf)])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:
                                Container(width: 80,height: 80,
                                  child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/stationery.png'),),)
                            ),
                            Text('Stationery',style: TextStyle(fontSize:
                            16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),

                          ],
                        ),
                      ),
          
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
          
          
                      height:120,
                      width: 160,
          
                      decoration: BoxDecoration(borderRadius:
                      BorderRadius.circular(21),gradient:
                      LinearGradient(colors:
                      [Color(0xfffbfcdb),Color(0xffe9defa)])),
                      child:  Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipOval(
                                child:Container(width: 80,height: 80,child: Padding(padding
                                    : EdgeInsets.all(8.0),child:
                                Image.asset('assets/images/comic-book.png'),),)
                            ),
                            Text('Comics',style: TextStyle(fontSize:
                            16,
                                fontWeight: FontWeight.w700,color: Colors.brown.shade700),),


                          ],
                        ),
                      ),
          
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
            ],
          ),
        )
    
    
    );}}