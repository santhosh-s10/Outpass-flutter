import 'package:flutter/material.dart';
// import 'package:kgi_outpass/screens/warden/warden.dart';
import 'package:sample1/warden-home.dart';

class bw extends StatefulWidget {
  const bw({Key? key}) : super(key: key);

  @override
  State<bw> createState() => _PageState();
}

class _PageState extends State<bw> {
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
                  "WARDEN",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.purple,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // Image.network('https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/91dc1964120315.5ac77335ae374.png'),

            // LinearProgressIndicator(color: Colors.teal.shade600,
            //     backgroundColor: Colors.indigo.shade900),

            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext) => hw()));
                  },
                  child: InkWell(
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 100.0,
                        maxHeight: 40.0,
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
