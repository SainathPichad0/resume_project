import 'package:flutter/material.dart';
import 'package:my_resume/UI/pages/Bcard_Input_page.dart';
import 'package:my_resume/UI/pages/bcard.dart';
import 'package:my_resume/UI/pages/resume.dart';

class Resume_or_Bcard extends StatelessWidget {
  const Resume_or_Bcard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              new RaisedButton(
                child: new Text(
                  'Resume',
                  style: new TextStyle(color: Colors.white),
                ),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Resuming()),
                  );
                },
                color: Colors.blue,
              ),

              new RaisedButton(
                child: new Text(
                  'Business card',
                  style: new TextStyle(color: Colors.white),
                ),
                onPressed: (){

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>Bcarding()),
                  );
                },
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
