import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
                    child: Container(
                      height: 500,
                  margin: EdgeInsets.only(left: 10,),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "PROFILE",
                            style: TextStyle(
                                color: Color(0xff355e92),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            color: Color(0xff169db3),
                          ),
                        ],
                      ),
                      Text(
                          "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam "),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "EDUCATION",
                        style: TextStyle(
                            color: Color(0xff355e92),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        color: Color(0xff169db3),
                      ),
                      Wrap(
                        children: [
                          Text(
                            "[School Name]",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                      Text("2017-2021"),
                      Text("8.68 GPA"),
                      Wrap(
                        children: [
                          Text(
                            "[School Name]",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                      Text("2017-2021"),
                      Text("8.68 GPA"),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "WORK EXPERIENCE",
                        style: TextStyle(
                            color: Color(0xff355e92),

                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Divider(
                        color: Color(0xff169db3),
                      ),
                      Wrap(
                        children: [
                          Text(
                            "[Company Name]",
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                      Text("2017-2021"),
                      Text("UI Designer"),
                      SizedBox(
                        height: 15,
                      ),
                      // Text(
                      //   "SKILLS",
                      //   style: TextStyle(
                      //       color: Colors.black,
                      //       fontSize: 15,
                      //       fontWeight: FontWeight.bold),
                      // ),
                      // Divider(
                      //   color: Color(0xff169db3),
                      // ),
                      // Text("SKILL1"),
                      // Text("SKILL1"),
                      // Text("SKILL1"),
                    ],
                  ),
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


                        social_colum(),
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

class social_colum extends StatelessWidget {
  const social_colum({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [

           rowofsocial(
             icon:
               Icons.phone,

             textof: "136129401286",

           ),
           rowofsocial(
             icon:
             Icons.email,

             textof: "saipichad7@gmail.com",

           ),
           rowofsocial(
             icon:
             MdiIcons.github,

             textof: "github.com",

           )
         ],
      ),
    );
  }
}

class rowofsocial extends StatelessWidget {
  IconData icon;
  String textof;
  rowofsocial({
    required this.icon,
    required this.textof
});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon),
      SizedBox(
        width: 3,
      ),
    Wrap(
      children: [
        Text(textof)
      ],
    )
    ],);
  }
}
