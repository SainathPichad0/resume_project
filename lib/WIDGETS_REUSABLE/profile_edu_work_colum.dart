import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class Profile_edu_work extends StatelessWidget {
  Color color;
  Color textcolor;
  Color pcolor;
  String fromcompany;
  String tocopany;
  String fromcoleg;
  String tocolege;
  String gpa;

  String description;
  String abooutcompany;


  String collegename;
  String companyname;
  String role;

  Profile_edu_work({
    required this.color,
    required this.textcolor,
    required this.pcolor,
required this.fromcompany,
    required this.tocopany,
    required this.description,
    required this.abooutcompany,
    required this.fromcoleg,
    required this.tocolege,
    required this.collegename,
    required this.gpa,
    required this.companyname,
    required this.role


});
  @override
  Widget build(BuildContext context) {
    textcolor==Colors.red?MdiIcons.themeLightDark:ThemeData.dark();
    return Container(
      height: 500,
      color: color,
      margin: EdgeInsets.only(left: 10),

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
                    color:textcolor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Divider(
                color: Color(0xff169db3),
              ),
            ],
          ),
         Wrap(
           children: [
             Text(
                 description,
             style: TextStyle(
               color: pcolor
             ),
             ),
           ],
         ),
          SizedBox(
            height: 15,
          ),
          Text(
            "EDUCATION",
            style: TextStyle(
                color: textcolor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Color(0xff169db3),
          ),
          Wrap(
            children: [
              Text(
                collegename,
                style: TextStyle(
                    color: pcolor
                ),
              )
            ],
          ),
          Text(fromcoleg+"-"+tocolege,  style: TextStyle(
              color: pcolor
          ),),
          Text("GPA-"+gpa,  style: TextStyle(
              color: pcolor
          ),),

          SizedBox(
            height: 15,
          ),
          Text(
            "WORK EXPERIENCE",
            style: TextStyle(
                color: textcolor,

                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Divider(
            color: Color(0xff169db3),
          ),
          Wrap(
            children: [
              Text(
                companyname,
                style: TextStyle(color: pcolor),
              )
            ],
          ),
          Text(fromcompany+"-"+tocopany,  style: TextStyle(
              color: pcolor
          ),),
          Text(role,  style: TextStyle(
              color: pcolor
          ),),
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
    );
  }
}
