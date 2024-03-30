import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sample1/status.dart';
import 'package:intl/intl.dart';
// import 'package:kgi_outpass/screens/students/status.dart';

class outpass extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<outpass> {
  final residencyController = TextEditingController();
  final roomController = TextEditingController();
  final depdateController = TextEditingController();
  final deptimeController = TextEditingController();
  final destController = TextEditingController();
  final arrdateController = TextEditingController();
  final arrtimeController = TextEditingController();
  final purposeController = TextEditingController();

  String? selectedValuehostel;

  String? selectedValuepermission;

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Orange"), value: "Orange"),
      DropdownMenuItem(child: Text("Cherry"), value: "Cherry"),
      DropdownMenuItem(child: Text("Kurinji"), value: "Kurinji"),
    ];
    return menuItems;
  }

  String? selectedValuehostel1;
  List<DropdownMenuItem<String>> get dropdownItems1 {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Orange"), value: "Orange"),
      DropdownMenuItem(child: Text("Cherry"), value: "Cherry"),
      DropdownMenuItem(child: Text("Kurinji"), value: "Kurinji"),
    ];
    return menuItems;
  }

  TextEditingController dateinput = TextEditingController();
  TextEditingController timeinput = TextEditingController();
  TextEditingController date2input = TextEditingController();
  TextEditingController time2input = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    dateinput.text = "";
    timeinput.text = "";
    date2input.text = "";
    time2input.text = "";

    super.initState();
  }
  List<DropdownMenuItem<String>> get dropdownpermission{
    List<DropdownMenuItem<String>> permission = [
      DropdownMenuItem(child: Text("Allowed"),value: "Allowed"),
      DropdownMenuItem(child: Text("Denied"),value: "Denied"),



    ];
    return permission;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OutPass'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.teal.shade600, Colors.indigo.shade900])),
        ),
      ),
      body: ListView(children: [
        Container(
          padding: EdgeInsets.all(15),
          child: Column(children: <Widget>[
            // Padding(
            //   padding: EdgeInsets.all(15),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(),
            //       labelText: 'Outpass No:',
            //       labelStyle: TextStyle(
            //           fontWeight:FontWeight.bold,fontSize: 18 ),
            //     ),
            //   ),
            // ),

            Card(
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Container(
                      child: Text(' Residency',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ),
                  ]),

                  Container(
                    padding: EdgeInsets.all(15),
                    child: DropdownButtonFormField(
                      elevation: 30,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                      ),
                      value: selectedValuehostel,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValuehostel = newValue!;
                        });
                      },
                      items: dropdownItems,
                    ),
                  ),

                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(' Floor',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ),

                  //  room ku
                  Container(
                    padding: EdgeInsets.all(15),
                    child: DropdownButtonFormField(
                      elevation: 30,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(),
                      ),
                      value: selectedValuehostel1,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValuehostel1 = newValue!;
                        });
                      },
                      items: dropdownItems1,
                    ),
                  ),

                              DropdownButtonFormField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    ),
                  ),
                                value: selectedValuepermission,
                                //_value1.isNotEmpty ? _value1 : null,
                                onChanged: (String? permissionvalue) {
                                  setState(() {
                                    selectedValuehostel= permissionvalue;
                                  });
                              },
                            items: dropdownpermission ),

                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      controller: dateinput,
                      decoration: InputDecoration(
                          icon: Icon(Icons.calendar_today),
                          labelText: "Enter Departure  Date"),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2101));

                        if (pickedDate != null) {
                          print(pickedDate);
                          String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);

                          print(formattedDate);

                          setState(() {
                            dateinput.text = formattedDate;
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        controller: timeinput,
                        decoration: InputDecoration(
                            icon: Icon(Icons.alarm),
                            labelText: 'Enter Departure Time'),
                        readOnly: true,
                        onTap: () async {
                          TimeOfDay? pickedTime = await showTimePicker(
                            initialTime: TimeOfDay.now(),
                            context: context,
                          );

                          if (pickedTime != null) {
                            print(pickedTime.format(context));
                            DateTime parsedTime = DateFormat.jm()
                                .parse(pickedTime.format(context).toString());

                            print(parsedTime);
                            String formattedTime =
                            DateFormat('HH:mm:ss').format(parsedTime);
                            print(formattedTime);

                            setState(() {
                              timeinput.text = formattedTime;
                            });
                          } else {
                            print("Time is not selected");
                          }
                        },
                      )),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      controller: destController,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Destination:',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      controller: date2input,
                      decoration: InputDecoration(
                          icon: Icon(Icons.calendar_today),
                          labelText: "Enter Arrival  Date"),
                      readOnly: true,
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(
                                2000), //DateTime.now() - not to allow to choose before today.
                            lastDate: DateTime(2101));

                        if (pickedDate != null) {
                          print(
                              pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                          String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                          // DateFormat('yyyy-MM-dd').format(pickedDate);
                          print(
                              formattedDate); //formatted date output using intl package =>  2021-03-16
                          //you can implement different kind of Date Format here according to your requirement

                          setState(() {
                            date2input.text =
                                formattedDate; //set output date to TextField value.
                          });
                        } else {
                          print("Date is not selected");
                        }
                      },
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        controller: time2input,
                        decoration: InputDecoration(
                            icon: Icon(Icons.alarm),
                            labelText: 'Enter Arrival Time'),
                        readOnly:
                        true, //set it true, so that user will not able to edit text
                        onTap: () async {
                          TimeOfDay? pickedTime = await showTimePicker(
                            initialTime: TimeOfDay.now(),
                            context: context,
                          );

                          if (pickedTime != null) {
                            print(pickedTime.format(context)); //output 10:51 PM
                            DateTime parsedTime = DateFormat.jm()
                                .parse(pickedTime.format(context).toString());
                            //converting to DateTime so that we can further format on different pattern.
                            print(parsedTime); //output 1970-01-01 22:53:00.000
                            String formattedTime =
                            DateFormat('HH:mm:ss').format(parsedTime);
                            print(formattedTime); //output 14:59:00
                            //DateFormat() is from intl package, you can format the time on any pattern you need.

                            setState(() {
                              time2input.text =
                                  formattedTime; //set the value of text field.
                            });
                          } else {
                            print("Time is not selected");
                          }
                        },
                      )),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      controller: purposeController,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'purpose:',
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      width: 150,
                      height: 60,
                      padding: EdgeInsets.only(top: 15),
                      margin: EdgeInsets.only(right: 10, top: 20),
                      child: Text(
                        'Submit',
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
                    onTap: () {
                      // if (roomController.text.isEmpty) {
                      //   print('roomno');
                      // }
                      if (dateinput.text.isEmpty) {
                        print('departure date');
                      } else if (timeinput.text.isEmpty) {
                        print('departure time');
                      } else if (date2input.text.isEmpty) {
                        print('arrival date');
                      } else if (time2input.text.isEmpty) {
                        print('arrival time');
                      } else if (purposeController.text.isEmpty) {
                        print('Enter purpose');
                      } else if (destController.text.isNotEmpty) {
                        print('3333333333');
                        FirebaseFirestore.instance.collection('details').add({
                          // 'residency' : residencyController.text,
                          'room.no': roomController.text,
                          'dep_date': dateinput.text,
                          'dep_time': timeinput.text,
                          'destination': destController.text,
                          'arr_date': date2input.text,
                          'arr_time': time2input.text,
                          'purpose': purposeController.text
                        });
                        print('clicked');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Status()));
                      }
                    },
                  )
                ],
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}

