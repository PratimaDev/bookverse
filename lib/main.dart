//import 'package:bookverse/login_Signup.dart';
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
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              //     gradient: LinearGradient(colors: [Color(0xffD4E1F5),Color(0xff009efd)])
              color: Colors.yellowAccent),
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Icon(
                        Icons.menu_book_rounded,
                        size: 78,
                        color: Colors.brown.shade800,
                        shadows: [Shadow(blurRadius: 1)],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          width: 340,
                          height: 260,
                          padding: EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(21),
                          ),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Text(
                                'Welcome!!!',
                                style: TextStyle(
                                  color: Colors.brown.shade800,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 35,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 1),
                              child: Text(
                                  'Please login or sign up to continue...'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xfffdfbfb),
                                      Color(0xffebedee)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'bookverse123@gmail.com',
                                    label: Text('Email'),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(21),
                                      borderSide: BorderSide(
                                          color: Colors.brown.shade800),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.email_rounded,
                                      color: Colors.brown.shade800,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 9),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                child: TextField(
                                  obscureText: true,
                                  obscuringCharacter: '*',
                                  decoration: InputDecoration(
                                    hintText: 'Enter your password',
                                    label: Text('Password'),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(21),
                                      borderSide: BorderSide(
                                          color: Colors.brown.shade800),
                                    ),
                                    suffixIcon: Icon(
                                      FontAwesomeIcons.eyeSlash,
                                      color: Colors.brown.shade800,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 150, top: 1),
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.brown.shade500,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ]),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        child: GestureDetector(
                          child: Container(
                            width: 190,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.lightBlueAccent,
                                boxShadow: [BoxShadow(blurRadius: 2)]),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text(
                            'Skip',
                            style: TextStyle(
                              color: Colors.brown.shade800,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 150),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? "),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginSignup()),
                                );
                              },
                              child: Text(
                                'Register here!',
                                style: TextStyle(
                                    color: Colors.brown.shade800,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ])),
            ),
          ),
        ),
      ),
    );
  }
}
