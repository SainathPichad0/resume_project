import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Resume16page extends StatelessWidget {
  //
  //
  //
  // String? name;
  // String ?email;
  // String? phone;
  // String ?linkedin;
  // String ?mainrole;
  // String ?github;
  // String ?descperson;
  // String? company;
  // String? roleincompany;
  // String? aboutcompany;
  // String? fromcompany;
  // String? tocompany;
  // String ?college;
  // String? fromcollege;
  // String? tocollege;
  // String ?degree;
  // String ?specialization;
  // String ?gpa;
  // List<String>? skillsList;
  // Resume16page
  //     ({required this.name,
  //   required this.email,
  //   required this.mainrole,
  //   required this.phone,
  //   required this.linkedin,
  //   required this.github,
  //   required this.descperson,
  //   required this.company,
  //   required this.roleincompany,
  //   required this.aboutcompany,
  //   required this.fromcompany,
  //   required this.tocompany,
  //   required this.college,
  //   required this.fromcollege,
  //   required this.tocollege,
  //   required this.degree,
  //   required this.specialization,
  //   required this.gpa,
  //   required this.skillsList,});
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              color: Color(0xff98252a),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
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
                          "Tom Roberts",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "Flutter Developer",
                          style: TextStyle(
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 12),
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
                      icon: Icons.email, val: "saipichad7@gmail.com"),
                  SocialRow_withicon(icon: Icons.phone, val: "96733773710"),
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
                        icon: MdiIcons.linkedin, val: "git.linkedinss.com"),
                    SocialRow_withicon(
                        icon: MdiIcons.github, val: "git.coml.com"),
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
                            height: 10,
                          ),
                          Titlestyle(
                            titile: "Profile",
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            children: [
                              Text(
                                "Lorem enim non est sunt ea deserunt mollit mollit qui id ex enim irure. Incididunt labore occaecat id laboris elit officia. Aliqua Lorem labore sint enim proident ea aliquip magna minim duis sint est.",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Titlestyle(titile: "Employement History"),
                          SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Flutter Developer",
                                    style: TextStyle(fontSize: 11),
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Wrap(
                                    children: [
                                      Text(
                                        "One Percent",
                                        style: TextStyle(fontSize: 11),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          Text(
                            "2016-2021",
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            "Fugiat qui sit Lorem excepteur cillum id veniam commodo aliqua enim commodo. Enim deserunt id id nostrud eiusmod officia sunt. Sunt consectetur cupidatat fugiat occaecat velit reprehenderit voluptate est proident proident tempor aute mollit.",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Titlestyle(titile: "Education History"),
                          SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            children: [
                              Text(
                                "Manipal Institute Of Technology'",
                                style: TextStyle(fontSize: 11),
                              )
                            ],
                          ),
                          Text(
                            "Computer And Communication Engineering'",
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "2016-2021",
                            style: TextStyle(fontSize: 10),
                          ),
                          Text(
                            "GPA:9.6",
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            height: 10,
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
                            height: 10,
                          ),
                          skill(skills: "Java"),
                          skill(skills: "Flutter"),
                          skill(skills: "Python"),
                          skill(skills: "AI/ML"),
                          skill(skills: "DSA"),
                          SizedBox(
                            height: 200,
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
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      child: Text(
        "Java",
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
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
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: Color(0xff98252a),
          size: 13,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          val,
          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
