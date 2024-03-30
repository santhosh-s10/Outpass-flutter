import 'package:flutter/material.dart';
import 'package:sample1/homehod.dart';


class hod extends StatefulWidget {
  const hod({Key? key}) : super(key: key);

  @override
  State<hod> createState() => _PageState();
}

class _PageState extends State<hod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.white,
              child: Container(
                alignment: Alignment(0.0, 2.5),
                child: CircleAvatar(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/imgs/KGI.png'),
                  radius: 60.0,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.blueGrey.shade900,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Kangeyam",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Outpass KGI",
              style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 15,
            ),

            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Container(
                height: 50,
                width: 200,
                padding: EdgeInsets.all(9),
                alignment: Alignment.center,
                child: Text(
                  "HOD",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.purple,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext) => home_hod()));
                  },
                  child: Container(
                    color: Colors.lightBlueAccent,
                    constraints: BoxConstraints(
                      maxWidth: 100.0,
                      maxHeight: 40.0,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          letterSpacing: 2.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
