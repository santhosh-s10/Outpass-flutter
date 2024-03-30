
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:sample1/login.dart';
import 'package:sample1/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: 'AIzaSyBPhkdunEVf4ADseH3F233IwURRdTJROEs',
          appId: "com.example.kgi_outpass",
          messagingSenderId: "abcde",
          projectId: 'nave-6afd6'));
  runApp(const MyApp());
}

@override
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: AnimatedSplashScreen(
        splash: 'assets/imgs/Kgi-logo.png', // use any widget here
        nextScreen: MyloginPage(),
        splashTransition: SplashTransition.fadeTransition,
        animationDuration: const Duration(seconds: 3),
        splashIconSize: 3000,
        duration: 2000,
      ),
    );
  }
}

class MyloginPage extends StatefulWidget {
  @override
  _MyloginPagestate createState() => _MyloginPagestate();
}

class _MyloginPagestate extends State<MyloginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 230),
            width: 200,
            height: 200,
            child: Image.asset(
              'assets/imgs/Kgi-logo.png',
            ),
          ),

          InkWell(
              child: Container(
                width: 175,
                height: 50,
                padding: EdgeInsets.only(top: 12),
                margin: EdgeInsets.only(right: 10, top: 20),
                child: Text(
                  'Log In',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Colors.teal.shade600,
                      Colors.indigo.shade900
                    ])),
              ),
              onTap: () {
                print('clicked');

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => logIn()));
              }),

          InkWell(
              child: Container(
                width: 175,
                height: 50,
                padding: EdgeInsets.only(top: 12),
                margin: EdgeInsets.only(right: 10, top: 20),
                child: Text(
                  'Register',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      Colors.teal.shade600,
                      Colors.indigo.shade900
                    ])),
              ),
              onTap: () {
                print('clicked');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => register()));
              }),
        ]),
      ),
    );
  }
}
