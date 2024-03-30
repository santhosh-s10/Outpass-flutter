
import 'package:flutter/material.dart';

import 'homeMentor.dart';
// import 'package:kgi_outpass/screens/admin/hmentor.dart';

@override
class mentor extends StatelessWidget {
  const mentor({Key? key}) : super(key: key);

  @override

  // State<mentor> createState() => _PageState();
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              child: Container(
                alignment: Alignment(0.0, 2.5),
                child: CircleAvatar(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(
                    'assets/imgs/KGI.png',
                  ),
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
              "to",
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
            Text(
              "MENTOR",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.purple,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold),
            ),
            // Card(
            //   margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 8.0),
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: [
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext) => hmen()));
                  },
                  child: InkWell(
                    // decoration: BoxDecoration(
                    //   gradient: LinearGradient(
                    //       begin: Alignment.centerLeft,
                    //       end: Alignment.centerRight,
                    //       colors: [Colors.teal.shade600,Colors.indigo.shade900]
                    //   ),
                    //   borderRadius: BorderRadius.circular(80.0),
                    // ),
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



