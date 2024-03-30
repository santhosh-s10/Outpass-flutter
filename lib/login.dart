import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:sample1/hod.dart';
import 'package:sample1/mentor.dart';
import 'package:sample1/outpass.dart';
import 'package:sample1/warden.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class logIn extends StatefulWidget {
  const logIn({Key? key}) : super(key: key);

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  @override
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  late SharedPreferences logindata;
  late bool newUser;
  late bool isObsecure = true;
  String s1 = 'Welcome';

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Log In",
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
              child:
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                    // validator: (email) {
                    // if (usernameController.text.isEmpty) {
                    // return 'Enter a Email Id*';
                    // }
                    //
                    // else if (usernameController.text.contains('.hod')) {
                    // Navigator.push(context, MaterialPageRoute(
                    // builder: (BuildContext) => hod()));
                    // print('1234');
                    // }
                    //
                    // else if (usernameController.text.contains('.cse')) {
                    // print('correct');
                    // }
                    //
                    // else if( usernameController.text.contains('.admin')){
                    // print('click');
                    // }
                    //
                    // else
                    // return "Valid Email Id";
                    // },

                    controller: usernameController,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        suffixIcon: Icon(Icons.email),
                        labelStyle: TextStyle(
                          color: Colors.black45,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          borderSide:
                          BorderSide(color: Colors.lightBlueAccent, width: 2),
                        ),
                        filled: true,
                        fillColor: Colors.white),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: Icon(Icons.key),
                          labelStyle: TextStyle(color: Colors.black45),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            borderSide:
                            BorderSide(color: Colors.lightBlueAccent, width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.white),
                    )),
                InkWell(
                    child: Container(
                      width: 200,
                      height: 60,
                      padding: EdgeInsets.only(top: 15),
                      margin: EdgeInsets.only(right: 10, top: 20),
                      child: Text(
                        'Continue',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [Colors.teal.shade600, Colors.indigo.shade900])),
                    ),
                    onTap: () async {
                      print('df');

                      if (usernameController.text.isEmpty) {
                        print('fdv');
                      } else if (usernameController.text.contains('builders.hod')) {
                        print('ooooooooooooooooo');

                        try {
                          print('try to  login ');
                          final sign = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                              email: usernameController.text,
                              password: passwordController.text);
                          if (sign != null) {
                            print('success');

                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => hod()));
                          }
                        } catch (e) {
                          print(e);
                          print('failed');
                        }
                      } else if (usernameController.text.contains('cse.bec') ||
                          usernameController.text.contains('aids.bec') ||
                          usernameController.text.contains('ece.bec') ||
                          usernameController.text.contains('civ.bec') ||
                          usernameController.text.contains('eee.bec') ||
                          usernameController.text.contains('mech.bec') ||
                          usernameController.text.contains('mba.bec')) {
                        try {
                          print('try to  login ');
                          final logg = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                              email: usernameController.text,
                              password: passwordController.text);
                          if (logg != null) {
                            print('success');

                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => outpass()));
                          }
                        } catch (e) {
                          print(e);
                          print('failed ');
                        }
                      } else if (usernameController.text.contains('builders.admin')) {
                        try {
                          print('try to  login ');
                          final userlogin = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                              email: usernameController.text,
                              password: passwordController.text);
                          if (userlogin != null) {
                            print('success');

                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) => mentor()));
                          }
                        } catch (e) {
                          print(e);
                          print('failed ');
                        }
                      }

                      // FirebaseFirestore.instance.collection('outpass').add({
                      //   'users': usernameController.text,
                      //   // 'password': passwordController.text
                      // });
                      // print('click');
                      // Navigator.push(
                      //     context, MaterialPageRoute(builder: (context) => mentor()));

                      else if (usernameController.text.contains('builders.warden')) {
                        try {
                          print('try to  login ');
                          final data = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                              email: usernameController.text,
                              password: passwordController.text);
                          if (data != null) {
                            print('success');

                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (context) => bw()));
                          }
                        } catch (e) {
                          print(e);
                          print('failed ');
                        }
                      } else {
                        print('wrong credentials');
                      }
                    }),
              ]))),
    );
  }
}

