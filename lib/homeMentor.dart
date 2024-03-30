import 'package:flutter/material.dart';
import 'package:sample1/warden-home.dart';

// import 'package:kgi_outpass/screens/forget_password.dart';

class hmen extends StatefulWidget {
  const hmen({Key? key}) : super(key: key);

  @override
  State<hmen> createState() => _thirdPageState();
}

class _thirdPageState extends State<hmen> {
  final profile = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12'
  ];
  final profile1 = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12'
  ];
  final controller = PageController();

  final commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Admin',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              )),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.teal.shade600, Colors.indigo.shade900])),
          )),
      body: PageView(children: [
        Container(
          color: Colors.black26,
          child: ListView.builder(
            itemCount: profile.length,
            itemBuilder: (BuildContext, int row) {
              return ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white60,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => hw()));
                  },
                  child: Card(
                    // color:Colors.lightBlue.shade50,
                    margin: EdgeInsets.all(9),
                    child: Column(
                      children: [
                        Row(children: [
                          Container(
                            margin: EdgeInsets.all(3),
                            // color: Colors.lightBlue.shade50,
                            child: CircleAvatar(
                              backgroundColor: Colors.pink,
                              radius: 13,
                            ),
                          ),
                          Text('Outpass No:'),
                          Expanded(
                              child: Container(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.more_vert,
                                        size: 20,
                                      ))))
                        ]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              child: Text('3m ago',
                                  style: TextStyle(fontSize: 10)),
                            ),
                          ],
                        )
                      ],
                    ),
                  ));
            },
          ),
        ),
      ]),
    );
  }
}
