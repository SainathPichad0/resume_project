import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
class Profile_edu_work extends StatelessWidget {
  Color color;
  Color textcolor;
  Color pcolor;
  Profile_edu_work({
    required this.color,
    required this.textcolor,
    required this.pcolor,

});
  @override
  Widget build(BuildContext context) {
    textcolor==Colors.red?MdiIcons.themeLightDark:ThemeData.dark();
    return Container(
      height: 500,
      color: color,

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
                 "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam ",
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
                "[College Name]",
                style: TextStyle(
                    color: pcolor
                ),
              )
            ],
          ),
          Text("2017-2021",  style: TextStyle(
              color: pcolor
          ),),
          Text("8.68 GPA",  style: TextStyle(
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
                "[Company Name]",
                style: TextStyle(color: pcolor),
              )
            ],
          ),
          Text("2017-2021",  style: TextStyle(
              color: pcolor
          ),),
          Text("UI Designer",  style: TextStyle(
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
