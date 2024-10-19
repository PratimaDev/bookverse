import 'package:bookverse/all_categories.dart';
import 'package:bookverse/buy.dart';
import 'package:bookverse/chat.dart';
import 'package:bookverse/login_Signup.dart';
import 'package:bookverse/profile.dart';
import 'package:bookverse/sell.dart';
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
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,);
  }
}

class HomePage extends StatefulWidget {



  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SingleChildScrollView(
                child: Container(

                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft:
                    Radius.circular(2),bottomRight: Radius.circular(2)),

                    gradient: LinearGradient(
                        colors: [Color(0xfffff396),Color(0xffFFF25C )])
                  ),

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(onPressed: (){},
                    icon:Icon(Icons.more_horiz_outlined,size: 50,color: Colors.brown.shade700,) ),
              Icon(Icons.menu_book_rounded,size: 39,
                color: Colors.brown.shade700,
                shadows: [BoxShadow(blurRadius: 1)],),

                            IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart
                              ,size: 39,color: Colors.brown.shade700,))




                          ]),


                        Container(

                          height: 50,
                          width:300,
                        alignment: Alignment.bottomCenter,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: TextFormField(


                            decoration: InputDecoration(

                            border: InputBorder.none,
                            hintText: 'Search books ,titles ,notes ,authors ,ISBN',
                            hintStyle: TextStyle(color: Colors.grey)
                                ,prefixIcon: Icon(Icons.search_rounded,color: Colors.grey,),

                 suffix: IconButton(onPressed: (){},
           icon: Icon(Icons.camera_alt_outlined,size: 28,
                                    color: Colors.brown.shade700,shadows: [BoxShadow(blurRadius: 1)],),),
                              )
                          ),),






              ]      ))







              ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(margin: EdgeInsets.only(top: 1),

                width: MediaQuery.of(context).size.width
                ,height: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(0),
                gradient: LinearGradient(colors: [Color(0xfffa709a),Color(0xfffee140)])),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(

          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AllCategoriesPage()));

              }
              ,child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ClipOval(
                      child:Container(width: 60,height: 60,child: Padding(padding
                          : EdgeInsets.all(8.0),child:
                        Image.asset('assets/images/allcategory.png'),),)
                    ),
                    Text('All Categories',style: TextStyle(fontSize: 13),)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipOval(
                      child:Container(width: 60,height: 60,child:
                      Padding(padding: EdgeInsets.all(4.0),child:
                      Image.asset('assets/images/school.png'),),)
                  ),
                  Text('School ')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipOval(
                      child:Container(width: 60,height: 60,child:
                      Padding(padding: EdgeInsets.all(8.0),child:
                      Image.asset('assets/images/prototype.png'),),)
                  ),
                  Text('Engineering ')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipOval(
                      child:Container(width: 60,height: 60,child:
                      Padding(padding: EdgeInsets.all(8.0),child:
                      Image.asset('assets/images/atom.png'),),)
                  ),
                  Text('Science')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipOval(
                      child:Container(width: 60,height: 60,child:
                      Padding(padding: EdgeInsets.all(8.0),child:
                      Image.asset('assets/images/maths.png'),),)
                  ),
                  Text('Mathematics')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipOval(
                      child:Container(width: 60,height: 60,child:
                      Padding(padding: EdgeInsets.all(8.0),child:
                      Image.asset('assets/images/shakespeare.png'),),)
                  ),
                  Text('Literature')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipOval(
                      child:Container(width: 60,height: 60,child:
                      Padding(padding: EdgeInsets.all(8.0),child:
                      Image.asset('assets/images/history.png'),),)
                  ),
                  Text('Art & History',)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipOval(
                      child:Container(width: 60,height: 60,child:
                      Padding(padding: EdgeInsets.all(8.0),child:
                      Image.asset('assets/images/meeting.png'),),)
                  ),
                  Text('Business')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipOval(
                      child:Container(width: 60,height: 60,child:
                      Padding(padding: EdgeInsets.all(8.0),child:
                      Image.asset('assets/images/compliant.png'),),)
                  ),
                  Text('Law')
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ClipOval(
                      child:Container(width: 60,height: 60,child:
                      Padding(padding: EdgeInsets.all(8.0),child:
                      Image.asset('assets/images/virtual-reality.png'),),)
                  ),
                  Text('Tech'),]),
            ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipOval(
                            child:Container(width: 60,height: 60,child:
                            Padding(padding: EdgeInsets.all(8.0),child:
                            Image.asset('assets/images/medical-team.png'),),)
                        ),
                      Text('Medical')]),
                )
              ,Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ClipOval(
                          child:Container(width: 60,height: 60,child:
                          Padding(padding: EdgeInsets.all(8.0),child:
                          Image.asset('assets/images/languages.png'),),)
                      ),
                      Text('Languages')]),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ClipOval(
                          child:Container(width: 60,height: 60,child:
                          Padding(padding: EdgeInsets.all(8.0),child:
                          Image.asset('assets/images/notes.png'),),)
                      ),
                    Text('Notes')]),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
                children: [
          ClipOval(
              child:Container(width: 60,height: 60,child:
              Padding(padding: EdgeInsets.all(8.0),child:
              Image.asset('assets/images/stationery.png'),),)
          ),
                Text('Stationery')]),
              ),Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
          ClipOval(
              child:Container(width: 60,height: 60,child:
              Padding(padding: EdgeInsets.all(8.0),child:
              Image.asset('assets/images/comic-book.png'),),)
          ),
                Text('Comics')],
              ),
              ),
          ],
                ),
              ),





          )














              ),
              Container(
                child:Image.asset('assets/images/template1.png')

              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Container(
                  child:Image.asset('assets/images/discount.png')
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 170),
                width: MediaQuery.of(context).size.width,
                height: 70,
                color: Colors.grey.shade300,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

               InkWell(
                 onTap: (){


                   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                 },
                 child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ClipOval(
                            child:Container(width: 70,height: 50,child:

                            Image.asset('assets/images/home.png'),),)
                        ,
                        Padding(
                          padding: const EdgeInsets.only(left:4),
                          child: Text('Home',style: TextStyle(

                              color: Colors.brown.shade700,fontWeight: FontWeight.bold),
                          ),
                        )],
                    ),
               ),
                InkWell(
                  onTap: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyPage()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ClipOval(
                        child:Container(width: 70,height: 50,child:

                        Image.asset('assets/images/order.png'),),)
                      ,
                      Padding(
                        padding: const EdgeInsets.only(left:4),
                        child: Text('Buy',style: TextStyle(

                            color: Colors.brown.shade700,fontWeight: FontWeight.bold),
                        ),
                      )],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>ChatPage()));
                  },

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ClipOval(
                        child:Container(width: 70,height: 50,child:

                        Image.asset('assets/images/chat.png'),),)
                      ,
                      Padding(
                        padding: const EdgeInsets.only(left:4),
                        child: Text('Chat',style: TextStyle(

                            color: Colors.brown.shade700,fontWeight: FontWeight.bold),
                        ),
                      )],
                  ),
                ),
                InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SellPage()));
                },


                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ClipOval(
                        child:Container(width: 70,height: 50,child:

                        Image.asset('assets/images/selling.png',height: 6,),),)
                      ,
                      Padding(
                        padding: const EdgeInsets.only(left:4),
                        child: Text('Sell',style: TextStyle(

                            color: Colors.brown.shade700,fontWeight: FontWeight.bold),
                        ),
                      )],
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ClipOval(
                        child:Container(width: 70,height: 50,child:

                        Image.asset('assets/images/user (1).png'),),)
                      ,
                      Padding(
                        padding: const EdgeInsets.only(left:4),
                        child: Text('Profile',style: TextStyle(

                            color: Colors.brown.shade700,fontWeight: FontWeight.bold),
                        ),
                      )],
                  ),
                ),

                
              ],
            ),
          ),
              )

             ] ),
        )

     );
  }
}