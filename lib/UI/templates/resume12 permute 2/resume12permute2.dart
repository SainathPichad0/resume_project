import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';
class Resume12permute2 extends StatefulWidget {



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

  Resume12permute2({
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
  State<Resume12permute2> createState() => _Resume12permute2State();
}

class _Resume12permute2State extends State<Resume12permute2> {
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
      appBar: AppBar(
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
                        .skillsList); //This generates a file and stores in pdfFile
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100*kh*h,
              color: Colors.purple,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25*kh*h, vertical: 20*kh*h),
                child: Row(
                  children: [
                    //
                    // CircleAvatar(
                    //   backgroundColor: Colors.black,
                    //   child: Icon(
                    //     MdiIcons.human
                    //   ),
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 28*kh*h,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          widget.mainrole,
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 12*kh*h),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SocialRow_withicon(
                      icon: Icons.email, val: widget.email),
                  SocialRow_withicon(icon: Icons.phone, val: widget.phone),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 30),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SocialRow_withicon(
                        icon: MdiIcons.linkedin, val: widget.linkedin),
                    SocialRow_withicon(
                        icon: MdiIcons.github, val: widget.github),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(13),
              child: Row(
                children: [
                  Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10*kh*h,
                          ),
                          Titlestyle(
                            titile: "Profile",
                          ),
                          SizedBox(
                            height: 10*kh*h,
                          ),
                          Wrap(
                            children: [
                              Text(
                                widget.descperson,
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11*kh*h),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10*kh*h,
                          ),
                          Titlestyle(titile: "Employement History"),
                          SizedBox(
                            height: 10*kh*h,
                          ),
                          Wrap(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    widget.roleincompany.toUpperCase(),
                                    style: TextStyle(fontSize: 11*kh*h),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Wrap(
                                    children: [
                                      Text(
                                        widget.company,
                                        style: TextStyle(fontSize: 11*kh*h),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Text(
                            widget.fromcompany+"-"+widget.tocompany,
                            style: TextStyle(fontSize: 10*kh*h),
                          ),
                          Text(
                            widget.aboutcompany,
                            style: TextStyle(
                                fontSize: 10*kh*h, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10*kh*h,
                          ),
                          Titlestyle(titile: "Education History"),
                          SizedBox(
                            height: 10*kh*h,
                          ),
                          Wrap(
                            children: [
                              Text(
                                widget.college
                                ,
                                style: TextStyle(fontSize: 11*kh*h),
                              )
                            ],
                          ),
                          Text(
                            widget.specialization,
                            style: TextStyle(
                                fontSize: 10*kh*h, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            widget.fromcollege+"-"+widget.tocollege,
                            style: TextStyle(fontSize: 10*kh*h),
                          ),
                          Text(
                            widget.gpa,
                            style: TextStyle(fontSize: 10*kh*h),
                          ),
                          SizedBox(
                            height: 10*kh*h,
                          )
                        ],
                      )),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "SKILLS",
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ),
                          SizedBox(
                            height: 10*kh*h,
                          ),
                          for(int i=0;i<widget.skillsList.length;i++)
                            skill(skills: widget.skillsList[i].toString()),

                          // skill(skills: "Java"),
                          // skill(skills: "Flutter"),
                          // skill(skills: "Python"),
                          // skill(skills: "AI/ML"),
                          // skill(skills: "DSA"),
                          SizedBox(
                            height: 200*kh*h,
                          ),
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class skill extends StatelessWidget {
  String skills;
  skill({required this.skills});

  double h = 0.0, w = 0.0;
  double kh = 1 / 759.2727272727273;
  double kw = 1 / 392.72727272727275;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    print('height is' + h.toString() + 'width is' + w.toString());
    return Container(
      margin: EdgeInsets.only(bottom: 5*kh*h),
      child: Text(
        skills,
        style: TextStyle(fontSize: 10*kh*h, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class Titlestyle extends StatelessWidget {
  String titile;
  Titlestyle({required this.titile});
  @override
  Widget build(BuildContext context) {
    return Text(
      titile,
      style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w700,
          fontSize: 17,
          color: Colors.black),
    );
  }
}

class SocialRow_withicon extends StatelessWidget {
  IconData icon;
  String val;
  SocialRow_withicon({required this.icon, required this.val});

  double h = 0.0, w = 0.0;
  double kh = 1 / 759.2727272727273;
  double kw = 1 / 392.72727272727275;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: Color(0xff98252a),
          size: 13*kh*h,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          val,
          style: TextStyle(fontSize: 10*kh*h, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
