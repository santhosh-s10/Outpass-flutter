import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  Status() : super();

  final String title = "Stepper Demo";

  @override
  State createState() => Statusstate();
}

class Statusstate extends State<Status> {
  //
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Step 1'),
      content: Text('student'),
      isActive: true,
    ),
    Step(
      title: Text('Step 2'),
      content: Text('Class Advisor/Mentor'),
      isActive: true,
    ),
    Step(
      title: Text('Step 3'),
      content: Text('HOD'),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text('Step 4'),
      content: Text('Deputy Warden'),
      state: StepState.complete,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Status",
          style: TextStyle(fontSize: 23),),

        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.teal.shade600,Colors.indigo.shade900])
          ),
        ),
      ),
      // Body
      body: Container(
        child: Stepper(
          currentStep: this.current_step,
          steps: steps,
          type: StepperType.vertical,
          onStepTapped: (step) {
            setState(() {
              current_step = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (current_step < steps.length - 1) {
                current_step = current_step + 1;
              } else {
                current_step = 0;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (current_step > 0) {
                current_step = current_step - 1;
              } else {
                current_step = 0;
              }
            });
          },
        ),
      ),
    );
  }
}
