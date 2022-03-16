import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';
class Resume11 extends StatefulWidget {

  String name;
  String email;
  String phone;
  String linkedin;
  String mainrole;
  String github;
  String descperson;
  String company;
  String roleincompany;
  String aboutcompany;
  String fromcompany;
  String tocompany;
  String college;
  String fromcollege;
  String tocollege;
  String degree;
  String specialization;
  String gpa;
  List<String> skillsList;

  Resume11({
    Key? key,
    required this.name,
    required this.email,
    required this.mainrole,
    required this.phone,
    required this.linkedin,
    required this.github,
    required this.descperson,
    required this.company,
    required this.roleincompany,
    required this.aboutcompany,
    required this.fromcompany,
    required this.tocompany,
    required this.college,
    required this.fromcollege,
    required this.tocollege,
    required this.degree,
    required this.specialization,
    required this.gpa,
    required this.skillsList,
  }) : super(key: key);

  @override
  _Resume11State createState() => _Resume11State();
}

class _Resume11State extends State<Resume11> {
  double h = 0.0, w = 0.0;
  double kh = 1 / 759.2727272727273;
  double kw = 1 / 392.72727272727275;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    print('height is' + h.toString() + 'width is' + w.toString());
    return Scaffold(
      appBar:   AppBar(
        title: Text('Hello'),
        actions: [
          TextButton.icon(
              onPressed: () async {
                //Widget w = resumebody();
                final pdfFile = await generate(
                    759.27,
                    392.72,
                    widget.name,
                    widget.email,
                    widget.phone,
                    widget.linkedin,
                    widget.mainrole,
                    widget.github,
                    widget.descperson,
                    widget.company,
                    widget.roleincompany,
                    widget.aboutcompany,
                    widget.fromcompany,
                    widget.tocompany,
                    widget.college,
                    widget.fromcollege,
                    widget.tocollege,
                    widget.degree,
                    widget.specialization,
                    widget.gpa,
                    widget
                        .skillsList); //required This generates a file and stores in pdfFile
                //invoice here represents the values which we have to show

                PdfApi.openFile(pdfFile);
              },
              icon: Icon(
                Icons.picture_as_pdf,
                color: Colors.white,
              ),
              label: Text(
                'Generate',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Container(
                  width: 500*kw*w,
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  color: Colors.black,
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Wrap(
                            children: [
                              Text(
                                widget.name
                                ,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30*kh*h,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Wrap(
                            children: [
                              Text(
                                widget.mainrole,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15*kh*h,
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
                      color: Color(0xffB8CCE4),

                      textcolor:   Color(0xff355E92),
                      pcolor: Colors.black,
                      gpa: widget.gpa,
                      fromcompany: widget.fromcompany,
                      abooutcompany: widget.aboutcompany,
                      collegename: widget.college,
                      description: widget.descperson,
                      companyname: widget.company,
                      fromcoleg: widget.fromcollege,
                      role: widget.mainrole,
                      tocolege: widget.tocollege,
                      tocopany: widget.tocompany,
                    )),
                Container(

                ),
                Expanded(
                  child: Container(
                      height: 500*kh*h,
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

                                      fontSize: 18*kh*h,
                                      fontWeight: FontWeight.bold),
                                ),
                                Divider(
                                  color: Color(0xff169db3),
                                ),
                                for(int i=0;i<skillsList.length;i++)
                                  Wrap(
                                    children: [
                                      Text(
                                        skillsList[i],
                                        style: TextStyle(color: Colors.black),
                                      ),

                                    ],
                                  ),
                              ],
                            ),
                          ),


                          social_colum(
                            titlecolor:   Color(0xffB8CCE4),
                            phone: widget.phone,
                            email: widget.email,
                            github: widget.github,
                            linedinn: widget.linkedin,
                          ),
                        ],
                      )
                  )
                  ,
                ),
              ],
            ),
            SizedBox(
              height: 30*kh*h,
            )
          ],
        ),
      ),
    );
  }
}
class social_colum extends StatelessWidget {
     Color titlecolor;
     String phone;
     String email;
     String github;
     String linedinn;
     social_colum({
       required this.phone,
       required this.email,required this.github,
       required this.linedinn,
       required this.titlecolor
});
  @override
  Widget build(BuildContext context) {
    return Container(
     height: h*0.2,
     width: w*0.50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("CONTACT",
            style: TextStyle(
                color:titlecolor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),

          rowofsocial(
            icon:
            Icons.phone,

            textof: phone,

          ),
          rowofsocial(
            icon:
            Icons.email,

            textof: email,

          ),
          rowofsocial(
            icon:
            MdiIcons.github,

            textof: github,

          ),
          rowofsocial(
            icon:
            MdiIcons.linkedin,

            textof: linedinn,

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
    return Wrap(
      children: [
    Container(
    margin: EdgeInsets.only(top: 3),
    child: Row(
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
    ],),
    )
      ],
    );
  }
}

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

