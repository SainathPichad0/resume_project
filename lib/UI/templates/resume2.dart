import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/WIDGETS_REUSABLE/SOCIAL.dart';
import 'package:my_resume/WIDGETS_REUSABLE/profile_edu_work_colum.dart';

class Resume2 extends StatefulWidget {
  const Resume2({Key? key}) : super(key: key);

  @override
  _Resume2State createState() => _Resume2State();
}

class _Resume2State extends State<Resume2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
              width: 500,
              margin: EdgeInsets.only(top: 10, left: 10, right: 10),
              color: Color(0xff355E92),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    children: [
                      Text(
                        "JOHN SMITH",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Wrap(
                    children: [
                      Text(
                        "Android Developer",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  )
                ],
              )),
            )),
            Row(
              children: [
                Expanded(
                    child: Profile_edu_work(
                      color: Colors.white,
                      textcolor:   Color(0xff355E92),
                      pcolor: Colors.black,
                    )),
                Expanded(
                    child: Container(
                  height: 500,
                  margin: EdgeInsets.only(right: 10),
                  color: Color(0xffB8CCE4),
                      
                
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 10),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "SKILLS",
                                style: TextStyle(
                                    color:Colors.black,

                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                color: Color(0xff169db3),
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    "[JAVA]",
                                    style: TextStyle(color: Colors.black),
                                  ),

                                ],
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    "[JAVA]",
                                    style: TextStyle(color: Colors.black),
                                  ),

                                ],
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    "[JAVA]",
                                    style: TextStyle(color: Colors.black),
                                  ),

                                ],
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    "[JAVA]",
                                    style: TextStyle(color: Colors.black),
                                  ),

                                ],
                              ),
                            ],
                          ),
                        ),


                       social_colum(
                         titlecolor:   Color(0xffB8CCE4),
                       ),
                      ],
                    )
                    )
                ,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
