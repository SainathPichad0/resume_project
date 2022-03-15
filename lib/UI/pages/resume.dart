import 'package:flutter/material.dart';
import 'package:my_resume/UI/pages/Resume_Input_Page.dart';

import 'Bcard_Input_page.dart';
class Resuming extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Resume Details'),
      ),
      body: new StepperBody_Resumme(),
    );
  }
}
