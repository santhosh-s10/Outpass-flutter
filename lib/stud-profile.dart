import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sample1/outpass.dart';


void main() {
  runApp(const stud_profile());
}
// final _formKey = GlobalKey<FormState>();
//
// String _userEmail = '';
// String _userName = '';
// String _password = '';
// String _confirmPassword = '';

final nameController = TextEditingController();
final rollController = TextEditingController();
final phoneController = TextEditingController();

class stud_profile extends StatelessWidget {
  const stud_profile({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:
    AppBar(title:  Text("Student Profile",style: TextStyle(fontSize: 25),),
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.teal.shade600,Colors.indigo.shade900])
        ),
      ),),
        body:SingleChildScrollView(child:
        Column(
          children: [
            Container(
              child: Text('Enter Your Name:',
                style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
              margin: EdgeInsets.only(right: 217,top: 5),),
            Container(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                  controller: nameController,

                  // validator: (value) {
                  //   if (nameController.text.isEmpty) {
                  //     return 'Please enter some text';
                  //   }
                  //   if (value?.length < 6) {
                  //     return 'Must be more than 6 charater';
                  //   }
                  // },

                  decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.black45),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2),
                      ),
                      filled: true,
                      fillColor: Colors.white)),

            ),
            Container(
              child: Text('Enter Your Roll no:',
                style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
              margin: EdgeInsets.only(right: 208,),),
            Container(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  controller: rollController,

                  // validator: (value) {
                  //   if (rollController.text.isEmpty) {
                  //     return 'Please enter your rollno';
                  //   }
                  //   if (value?.length < 6) {
                  //     return 'Must be more than 6 charater';
                  //   }
                  // },

                  decoration: InputDecoration(
                      labelText: 'Roll no',
                      labelStyle: TextStyle(color: Colors.black45),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2),
                      ),
                      filled: true,
                      fillColor: Colors.white),)
            ),
            Container(
              child: Text('Enter Your Phone no:',
                style:TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
              margin: EdgeInsets.only(right: 183),),
            Container(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  controller: phoneController,
                  validator: (value) {
                    if (value == null || phoneController.text.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },

                  //   if (phoneController.text.isEmpty) {
                  //     return 'Please enter your phoneno';
                  //   }
                  //   if (value?.length < 6) {
                  //     return 'Must be more than 6 charater';
                  //   }
                  // },

                  decoration: InputDecoration(
                      labelText: 'Phone no',
                      labelStyle: TextStyle(color: Colors.black45),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.lightBlueAccent,width: 2),
                      ),
                      filled: true,
                      fillColor: Colors.white),)
            ),
            InkWell( child:
            Container(
              width: 200, height:60,
              padding: EdgeInsets.only(top: 15),
              margin: EdgeInsets.only(right: 10,top:20),
              child:
              Text('Next',textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      colors: [Colors.teal.shade600,Colors.indigo.shade900]
                  )),
            ),
                onTap: () {
                  if( nameController.text.isEmpty) {
                    print('enter text');

                  }
                  else if ( rollController.text.isEmpty) {
                    print('enter rollno');
                  }
                  else if ( phoneController.text.isEmpty) {
                    print('enter phone');
                  }

                  else if( nameController.text.isNotEmpty) {
                    print('11111111111111');

                    FirebaseFirestore.instance.collection('students')
                        .add({'name' : nameController.text, 'rollno': rollController.text,
                      'phone' : phoneController.text});
                    print('clicked');
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => outpass()));
                  } } ),
          ],
        ),
        )
    );
  }
}