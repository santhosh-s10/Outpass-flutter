
import 'package:flutter/material.dart';

class hw extends StatefulWidget {
  const hw({Key? key}) : super(key: key);

  @override
  State<hw> createState() => _thirdPageState();
}

class _thirdPageState extends State<hw> {
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
          title: Text('Deputy Warden',
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
              itemCount: profile1.length,
              itemBuilder: (BuildContext, int row) {
                return Container(
                    margin: EdgeInsets.only(right: 15, left: 15),
                    padding: EdgeInsets.all(5),
                    child: Card(
                      // color: Colors.lightBlue.shade50,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Outpass no: 12342563@%32 ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12)),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 20,
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  child: Card(
                                      child: Container(
                                        // color: Colors.green,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                            color: Colors.green),
                                        width: 100,
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Accept',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )),
                                  onTap: () {},
                                ),
                                InkWell(
                                  child: Card(
                                      child: Container(
                                        // color: Colors.green,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                            color: Colors.red),
                                        width: 100,
                                        height: 50,
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Decline',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )),
                                  onTap: () {},
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 10,
                                )
                              ],
                            ),
                            Container(
                              height: 80,
                              width: 300,
                              child: TextField(
                                controller: commentController,
                                decoration: InputDecoration(
                                    labelText: 'Write a Comments',
                                    labelStyle: TextStyle(
                                      color: Colors.black45,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(
                                          color: Colors.lightBlueAccent,
                                          width: 2),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                      borderSide: BorderSide(
                                          color: Colors.lightBlueAccent,
                                          width: 2),
                                    ),
                                    suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.send)),
                                    filled: true,
                                    fillColor: Colors.white),
                                keyboardType: TextInputType.multiline,
                                textInputAction: TextInputAction.newline,
                                minLines: 1,
                                maxLines: 8,
                                // onTap: () {
                                //   Navigator.push(context, MaterialPageRoute(
                                //       builder: (BuildContext) =>  );
                                //
                                // },
                              ),
                            )
                          ],
                        ),
                      ),
                    ));
              }),
        )
      ]),
      bottomNavigationBar: Container(
        height: 55,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.teal.shade600, Colors.indigo.shade900])),
      ),
    );
  }
}
