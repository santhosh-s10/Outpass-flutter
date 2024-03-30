import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:sample1/hod.dart';
import 'package:sample1/mentor.dart';
import 'package:sample1/stud-profile.dart';
import 'package:sample1/warden.dart';

import 'package:shared_preferences/shared_preferences.dart';

class register extends StatefulWidget {
  @override
  registerstate createState() => registerstate();
}

@override
class registerstate extends State<register> {
  void main() {
    WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: 'AIzaSyBPhkdunEVf4ADseH3F233IwURRdTJROEs',
            appId: "com.example.kgi_outpass",
            messagingSenderId: "abide",
            projectId: 'nave-6afd6'));
  }

  // final _auth = FirebaseAuth.instance;
  // void initState() {
  //   super.initState();
  //   getCurrentUser();
  // }

  // void getCurrentUser() async
  // {
  //   try {
  //     final user = await
  //     _auth.currentUser;
  //     if (user != null) {
  //       // loggedinUser = user;
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  final auth = FirebaseAuth.instance;
  late String email;
  late String password;
  bool showSpinner = false;
  final passwordController = TextEditingController();
  final password2Controller = TextEditingController();
  final mailController = TextEditingController();
  final username = TextEditingController();
  final department = TextEditingController();
  final registernumber = TextEditingController();
  final phonenumber = TextEditingController();

  void homepage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String password2 = password2Controller.text;
    String mail = mailController.text;
    prefs.setString('conformPassword', password2);
    prefs.setString('mail', mail);
  }

  late SharedPreferences logindata;
  late bool newUser;
  late bool isObsecure = true;
  String s1 = 'Welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(
          "Sign In",
          style: TextStyle(fontSize: 23),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.teal.shade600, Colors.indigo.shade900])),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 110),
                  width: 200,
                  height: 200,
                  child: Image.asset(
                    'assets/imgs/Kgi-logo.png',
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      //   onChanged:(value) {
                      //   password = value;
                      // },
                      controller: username,
                      decoration: InputDecoration(
                          labelText: 'Username',
                          suffixIcon: Icon(Icons.key),
                          labelStyle: TextStyle(color: Colors.black45),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.white),
                    )),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(15),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        suffixIcon: Icon(Icons.email),
                        labelStyle: TextStyle(
                          color: Colors.black45,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 2),
                        ),
                        filled: true,
                        fillColor: Colors.white),
                    controller: mailController,
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      //   onChanged:(value) {
                      //   password = value;
                      // },
                      controller: department,
                      decoration: InputDecoration(
                          labelText: 'Department',
                          suffixIcon: Icon(Icons.key),
                          labelStyle: TextStyle(color: Colors.black45),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.white),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      //   onChanged:(value) {
                      //   password = value;
                      // },
                      controller: registernumber,
                      decoration: InputDecoration(
                          labelText: 'Register Number',
                          suffixIcon: Icon(Icons.app_registration),
                          labelStyle: TextStyle(color: Colors.black45),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.white),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      //   onChanged:(value) {
                      //   password = value;
                      // },
                      controller: phonenumber,
                      decoration: InputDecoration(
                          labelText: 'Phone Number',
                          suffixIcon: Icon(Icons.phone_android),
                          labelStyle: TextStyle(color: Colors.black45),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.white),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      //   onTap: () async { setState(() {
                      //   showSpinner = true;
                      // });
                      // try {
                      //   final user = await _auth.signInWithEmailAndPassword(
                      //       email: email, password: password);
                      //   if (user != null) {
                      //     Navigator.pushNamed(context, 'home_screen');
                      //   }
                      // } catch (e) {
                      //   print(e);
                      // }
                      // setState(() {
                      //   showSpinner = false;
                      // }); },

                      controller: passwordController,
                      decoration: InputDecoration(
                          labelText: 'Create Password',
                          suffixIcon: Icon(Icons.create_outlined),
                          labelStyle: TextStyle(color: Colors.black45),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.white),
                    )),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    child: TextFormField(
                      //   onChanged:(value) {
                      //   password = value;
                      // },
                      controller: password2Controller,
                      decoration: InputDecoration(
                          labelText: 'Confirm Password',
                          suffixIcon: Icon(Icons.key),
                          labelStyle: TextStyle(color: Colors.black45),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.white),
                    )),
                InkWell(
                    child: Container(
                      width: 190,
                      height: 60,
                      padding: EdgeInsets.only(top: 15),
                      margin: EdgeInsets.only(right: 10, top: 20),
                      child: Text(
                        'Next',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            Colors.teal.shade600,
                            Colors.indigo.shade900
                          ])),
                    ),
                    onTap: () async {
                      print('df');

                      if (mailController.text.isEmpty) {
                        print('fdv');
                      } else if (username.text.isEmpty) {
                        print('username is empty');
                      } else if (department.text.isEmpty) {
                        print('department is empty');
                      } else if (registernumber.text.isEmpty) {
                        print('register no is empty');
                      } else if (phonenumber.text.isEmpty) {
                        print('phone no is empty');
                      } else if (mailController.text.contains('builders.hod') ||
                          passwordController.text == password2Controller.text) {
                        print('1234');
                        try {
                          print(mailController.text);
                          print(password2Controller.text);
                          final newuser = await auth.createUserWithEmailAndPassword(
                              email: mailController.text,
                              password: password2Controller.text);
                          if (newuser != null) {
                            FirebaseFirestore.instance.collection('user').add({
                              'username': username.text,
                              'email': mailController.text,
                              'phone': phonenumber.text,
                              'department': department.text,
                              'phone': phonenumber.text,
                            });

                            print('hod');

                         if(mailController.text.contains("hod")){
                           Navigator.pushReplacement(context,
                               MaterialPageRoute(builder: (context) => hod()));
                         }
                         else if(mailController.text.contains("admin")){
                           Navigator.pushReplacement(context,
                               MaterialPageRoute(builder: (context) => mentor()));

                         }
                         else if (mailController.text.contains('cse.bec') ||
                             mailController.text.contains('aids.bec') ||
                             mailController.text.contains('ece.bec') ||
                             mailController.text.contains('civ.bec') ||
                             mailController.text.contains('eee.bec') ||
                             mailController.text.contains('mech.bec') ||
                             mailController.text.contains('mba.bec') ||
                             passwordController.text == password2Controller.text){
                           Navigator.pushReplacement(context,
                               MaterialPageRoute(builder: (context) => stud_profile()));
                         }
                         else if (mailController.text.contains('builders.warden') ||
                             passwordController.text == password2Controller.text){
                           Navigator.pushReplacement(context,
                               MaterialPageRoute(builder: (context) => bw()));
                         }

                          }
                        } catch (e) {
                          print(e);
                        }
                      } else if (mailController.text.contains('cse.bec') ||
                          mailController.text.contains('aids.bec') ||
                          mailController.text.contains('ece.bec') ||
                          mailController.text.contains('civ.bec') ||
                          mailController.text.contains('eee.bec') ||
                          mailController.text.contains('mech.bec') ||
                          mailController.text.contains('mba.bec') ||
                          passwordController.text == password2Controller.text) {
                        print('correct');
                        {
                          print('934459');

                          try {
                            print(mailController.text);
                            print(password2Controller.text);
                            final dept = await auth.createUserWithEmailAndPassword(
                                email: mailController.text,
                                password: password2Controller.text);
                            if (dept != null) {
                              FirebaseFirestore.instance.collection('user').add({
                                'username': username.text,
                                'email': mailController.text,
                                'phone': phonenumber.text,
                                'department': department.text,
                                'phone': phonenumber.text,
                              });

                              print('stud profile');

                              // Navigator.pushReplacement(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => stud_profile()));
                            }
                          } catch (e) {
                            print(e);
                          }
                        }
                      } else if (mailController.text.contains('builders.admin') ||
                          passwordController.text == password2Controller.text) {
                        print('click');

                        try {
                          print(mailController.text);
                          print(password2Controller.text);
                          final custom = await auth.createUserWithEmailAndPassword(
                              email: mailController.text,
                              password: password2Controller.text);
                          if (custom != null) {
                            FirebaseFirestore.instance.collection('user').add({
                              'username': username.text,
                              'email': mailController.text,
                              'phone': phonenumber.text,
                              'department': department.text,
                              'phone': phonenumber.text,
                            });
                            print('mentor');

                            // Navigator.pushReplacement(context,
                            //     MaterialPageRoute(builder: (context) => mentor()));
                          }
                        } catch (e) {
                          print(e);
                        }
                      } else if (mailController.text.contains('builders.warden') ||
                          passwordController.text == password2Controller.text) {
                        try {
                          print(mailController.text);
                          print(password2Controller.text);
                          final finish = await auth.createUserWithEmailAndPassword(
                              email: mailController.text,
                              password: password2Controller.text);
                          if (finish != null) {
                            FirebaseFirestore.instance.collection('user').add({
                              'username': username.text,
                              'email': mailController.text,
                              'phone': phonenumber.text,
                              'department': department.text,
                              'phone': phonenumber.text,
                            });

                            print('warden');
                            // Navigator.pushReplacement(context,
                            //     MaterialPageRoute(builder: (context) => bw()));
                          }
                        } catch (e) {
                          print(e);
                        }
                      } else {
                        print('wrong credentials');
                      }
                    })
              ],
            )),
      ),
    );
  }
}

