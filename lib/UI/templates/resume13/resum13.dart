import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/WIDGETS_REUSABLE/profile_edu_work_colum.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';


class Resume13 extends StatefulWidget {



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

  Resume13({
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
  State<Resume13> createState() => _Resume13State();
}

class _Resume13State extends State<Resume13> {
  double h = 0.0, w = 0.0;

  double kh = 1 / 759.2727272727273;

  double kw = 1 / 392.72727272727275;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    print('height is' + h.toString() + 'width is' + w.toString());
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 10*kh*h,
                width: double.infinity,
                color: Colors.lightBlueAccent,
              ),
              SizedBox(
                height: 30*kh*h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                        fontSize: 24*kh*h,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3*kh*h,
                  ),
                  Text(
                    widget.mainrole,
                    style: TextStyle(
                        fontSize: 17*kh*h,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                ],
              ),
              SizedBox(
                height: 25*kh*h,
              ),
              Container(
                height: 2*kh*h,
                margin: EdgeInsets.symmetric(horizontal: 15*kh*h),
                width: double.infinity,
                color: Colors.lightBlueAccent,
              ),
              SizedBox(
                height: 25*kh*h,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15*kh*h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TitleWithunderline(title: "PERSONAL PROFILE"),
                              SizedBox(
                                height: 20*kh*h,
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    widget.descperson,
                                    style: TextStyle(fontSize: 13*kh*h),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20*kh*h,
                              ),

                              //TODO SIKILLLS
                              TitleWithunderline(title: "SKILLS AND ABILITIES"),
                              SizedBox(
                                height: 18*kh*h,
                              ),
                              // skillrow(skill: "JAVA"),
                              // skillrow(skill: "APP DEVELOPMENT"),
                              // skillrow(skill: "PHP"),
                              //
                              // skillrow(skill: "CODING"),
                              //
                              // skillrow(skill: "FOOTBALL"),
                              for(int i=0;i<widget.skillsList.length;i++)
                                skillrow(skill: widget.skillsList[i]),

                              SizedBox(
                                height: 20*kh*h,
                              ),

                              //
                              // //TODO CONTACT
                              TitleWithunderline(title: "CONTACT DETAILS"),
                              SizedBox(
                                height: 20*kh*h,
                              ),
                              // SizedBox(
                              //   height: 10.h,
                              // ),
                              //
                              contactrow(titlle: "Mobile", val: widget.phone),
                              Wrap(
                                children: [
                                  contactrow(titlle: "Email", val: widget.email),
                                ],
                              ),
                              Wrap(
                                children: [
                                  contactrow(titlle: "LinkdeIn", val: widget.linkedin)
                                ],
                              )
                              ,
                              Wrap(
                                children: [
                                  contactrow(titlle: "GitHub", val: widget.github),
                                ],
                              )
                              // contactrow(titlle: "GitHub", val: github),
                              //
                            ],
                          )),
                    ),
                    SizedBox(
                      width: 5*kh*h,
                    ),

                    Container(

                      child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TitleWithunderline(title: "EMPLOYMENT HISTORY"),
                              SizedBox(
                                height: 20*kh*h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.mainrole,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15*kh*h),
                                  ),
                                  SizedBox(
                                    height: 4*kh*h,
                                  ),
                                  Text(
                                    widget.fromcompany+"-"+widget.tocompany,
                                    style: TextStyle(fontSize: 10*kh*h),
                                  ),
                                  SizedBox(
                                    height: 4*kh*h,
                                  ),
                                  Text(
                           widget.aboutcompany,
                                    style: TextStyle(fontSize: 13*kh*h),
                                  )
                                ],
                              ),

                              SizedBox(
                                height: 20*kh*h,
                              ),

                              //TODO SIKILLLS
                              TitleWithunderline(title: "ACADEMIC PROFILE"),
                              SizedBox(
                                height: 20*kh*h,
                              ),

                              Wrap(
                                children: [
                                  Text(
                                    widget.college,
                                    style: TextStyle(fontSize: 13*kh*h),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4*kh*h,
                              ),
                              Text(
                                widget.fromcollege+"-"+widget.tocollege,
                                style: TextStyle(fontSize: 12*kh*h),
                              ),
                              Divider(),
                              SizedBox(
                                height: 4*kh*h,
                              ),
                              Text(
                                widget.degree,
                                style: TextStyle(fontSize: 12*kh*h),
                              ),
                              SizedBox(
                                height: 4*kh*h,
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    widget.specialization,
                                    style: TextStyle(fontSize: 12*kh*h),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "GPA ${widget.gpa  }",
                                style: TextStyle(fontSize: 12*kh*h,

                                    color: Colors.black),
                              ),

                              // //TODO CONTACT
                              // TitleWithunderline(title: "CONTACT DETAILS"),
                              // SizedBox(
                              //   height: 10.h,
                              // ),
                              //
                              // contactrow(titlle: "Mobile", val: phone),
                              // contactrow(titlle: "Email", val: email),
                              // contactrow(titlle: "GitHub", val: github),
                              // contactrow(titlle: "LinkdeIn", val: linkedin)
                            ],
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class skillrow extends StatelessWidget {
  String skill;
  skillrow({required this.skill});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 3),
      child: Row(
        children: [
          Text("-"),
          SizedBox(
            width: 5,
          ),
          Text(
            skill,
            style: TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}

class contactrow extends StatelessWidget {
  String titlle;
  String val;
  contactrow({required this.titlle, required this.val});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            Text(
              titlle,
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 11),
            ),
            Text(":-"),
            SizedBox(
              width: 5,
            ),
            Text(val,

              style: TextStyle(
                  fontSize: 10,
                  color: Colors.black
              ),)
          ],
        )
      ],
    );
  }
}

class TitleWithunderline extends StatelessWidget {
  String title;
  TitleWithunderline({required this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 5,
          color: Colors.lightBlueAccent,
          width: 40,
        )
      ],
    );
  }
}


