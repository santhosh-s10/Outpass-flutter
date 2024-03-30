import 'package:flutter/material.dart';

class home_hod extends StatefulWidget {
  const home_hod({Key? key}) : super(key: key);

  @override
  State<home_hod> createState() => _thirdPageState();
}

final profile = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12'];

class _thirdPageState extends State<home_hod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('hod'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.teal.shade600, Colors.indigo.shade900])),
          )),
      body: ListView.builder(
          itemCount: profile.length,
          itemBuilder: (BuildContext, int row) {
            return Container(
              margin: EdgeInsets.only(right: 15, left: 15),
              padding: EdgeInsets.all(5),
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Outpass no: 12342563@%32 ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12)),
                          Container(child: Text('3m ago'))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            child: Card(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                      color: Colors.green),
                                  width: 50,
                                  height: 30,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Accept',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                          InkWell(
                            child: Card(
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                      color: Colors.red),
                                  width: 50,
                                  height: 30,
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Decline',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
      bottomNavigationBar: Container(
        height: 55,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.teal.shade600, Colors.indigo.shade900])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_filled,
                  size: 37,
                  color: Colors.black87,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.message,
                  size: 35,
                  color: Colors.black87,
                )),
          ],
        ),
      ),
    );
  }
}
