import 'package:flutter/material.dart';

import 'Bcard_Input_page.dart';
class Bcarding extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Business Card Details'),
      ),
      body: new StepperBody(),
    );
  }
}
