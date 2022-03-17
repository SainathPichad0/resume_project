import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:my_resume/UI/pages/b_UIs.dart';

import 'package:my_resume/UI/pages/resumedata.dart';
import 'package:my_resume/UI/pages/resumetemplatesnavigation.dart';
import 'package:my_resume/UI/templates/pdftemplate/pdf_ui.dart';
import 'package:my_resume/main.dart';

import 'Resume_Display_Page.dart';
import 'datclass.dart';

// }
//
class StepperBody_Resumme extends StatefulWidget {
  @override
  _StepperBody_ResummeState createState() => new _StepperBody_ResummeState();
}

class _StepperBody_ResummeState extends State<StepperBody_Resumme> {
  int currStep = 0;
  static var _focusNode = new FocusNode();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  static ResumeData resumeData = ResumeData();

  @override
  void initState() {
    super.initState();

    _focusNode.addListener(() {
      setState(() {});
      print('Has focus: $_focusNode.hasFocus');
    });
  }








  void put_Experience(
      String Rcompany,
      String Rcomanyrole,
      String Rfromcompany,
      String Rtocompnay,
      String Raboutcompnay,
) async {
    await boxList[1].put('Rcompany', Rcompany);
    await boxList[1].put('Rcompanyrole', Rcomanyrole);
    await boxList[1].put('Rcompnay_fromdate', Rfromcompany);
    await boxList[1].put('Rcompnay_todate', Rtocompnay);
    await boxList[1].put('Rcompanyabout',Raboutcompnay);
    // await boxList[0].put('Bcompayname', Bcompanyname);
    // await boxList[0].put('Bwebsite', Bwebsite);
    //
    // await boxList[0].put('Baddress', Baddress);
    // await boxList[0].put('Bcity', Bcity);
    // await boxList[0].put('Rdescription', Rdescription);
    // await boxList[1].put('Bgithub', Rgithub);
    //
    // await boxList[1].put('Rlinkedin', Rlinkedin);
  }



  void put_Educationdetails(
      String Rcollege,
      String Rdegree,
      String Rfromcollege,
      String Rtocollege,
      String Rspecialization,
      String Rgpa,
    ) async {
    await boxList[1].put('Rcollege', Rcollege);
    await boxList[1].put('Rdegree', Rdegree);
    await boxList[1].put('Rfromcollege', Rfromcollege);
    await boxList[1].put('Rtocollege', Rtocollege);
    await boxList[1].put('Rspecial', Rspecialization);
    // await boxList[0].put('Bcompayname', Bcompanyname);
    // await boxList[0].put('Bwebsite', Bwebsite);
    //
    // await boxList[0].put('Baddress', Baddress);
    // await boxList[0].put('Bcity', Bcity);

    await boxList[1].put('Rgpa', Rgpa);
  }




  void put_Personaldetails(
      String Rname,
      String Rphone,
      String Remail,
      String Rlinkedin,
      String Rmainrole,
      String Rgithub,
      String Rdescription,
  ) async {
    await boxList[1].put('Rname', Rname);
    await boxList[1].put('Rphone', Rphone);
    await boxList[1].put('Remail', Remail);
    await boxList[1].put('Rmainrole', Rmainrole);
    // await boxList[0].put('Bcompayname', Bcompanyname);
    // await boxList[0].put('Bwebsite', Bwebsite);
    //
    // await boxList[0].put('Baddress', Baddress);
    // await boxList[0].put('Bcity', Bcity);
    await boxList[1].put('Rdescription', Rdescription);
    await boxList[1].put('Bgithub', Rgithub);

    await boxList[1].put('Rlinkedin', Rlinkedin);
  }

  @override
  void dispose() {
    if (_focusNode == null) {
      _focusNode.dispose();
    }
    super.dispose();
  }
  // ResumeUI4(
  // name: 'Gaurang Shah',
  // email: 'gaurangshah4@gmail.com',
  // mainrole: 'Sales Executive',
  // phone: '7754050674',
  // linkedin: 'linkedin.com/gaurangshah',
  // github: 'github.com/gaurangshah',
  // descperson:
  // 'Fugiat qui sit Lorem excepteur cillum id veniam commodo aliqua enim commodo. Enim deserunt id id nostrud eiusmod officia sunt. Sunt consectetur cupidatat fugiat occaecat velit reprehenderit voluptate est proident proident tempor aute mollit. Duis ad eiusmod sit Lorem eu amet ea ullamco velit incididunt voluptate. Veniam quis exercitation eu sint. Proident voluptate aliquip consequat commodo id. Nostrud voluptate tempor tempor exercitation nulla.',
  // company: 'One Percent',
  // roleincompany: 'Frontend Flutter Developer',
  // aboutcompany: 'Lorem enim non est sunt ea deserunt mollit mollit qui id ex enim irure. Incididunt labore occaecat id laboris elit officia. Aliqua Lorem labore sint enim proident ea aliquip magna minim duis sint est.',
  // fromcompany: '2022',
  // tocompany: 'Present',
  // college: 'Manipal Institute Of Technology',
  // fromcollege: '2018',
  // tocollege: '2022',
  // degree: 'BTech',
  // specialization: 'Computer And Communication Engineering',
  // gpa: '8.34',
  // skillsList: ['management', 'Dart', 'Java']);

  // name: 'Gaurang Shah',
  // email: 'gaurangshah4@gmail.com',
  // mainrole: 'Sales Executive',
  // phone: '7754050674',
  // address: 'B-19,Chetan Vihar',
  // city: 'Lucknow',
  // pincode: '226024',
  // state: 'Uttar Pradesh',
  // website: 'www.linkedin.com/gaurangshah',
  //
  // company: 'One Percent',
  List<Step> steps = [
    new Step(
        title: const Text('Perosnal Details'),
        //subtitle: const Text('Subtitle'),
        isActive: true,
        //state: StepState.editing,
        state: StepState.indexed,
        content: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter name';
                  }
                },
                onSaved: (value) {
                  resumeData.name = value!;
                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your name',
                    hintText: 'Enter a name',
                    icon: const Icon(Icons.person),
                    labelStyle: new TextStyle(
                        decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
            new TextFormField(
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              // validator: (value) {
              //   if (value!.isEmpty || value!.contains('@')) {
              //     return 'Please enter valid email';
              //   }
              // },
              onSaved: (value) {
                resumeData.email = value!;
              },
              maxLines: 1,
              decoration: new InputDecoration(
                  labelText: 'Enter your Email',
                  hintText: 'Enter a email address',
                  icon: const Icon(Icons.email),
                  labelStyle: new TextStyle(
                      decorationStyle: TextDecorationStyle.solid)),
            ),
            new TextFormField(
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter valid number';
                }
              },
              maxLength: 10,
              onSaved: (value) {
                resumeData.phone = value!;
              },
              maxLines: 1,
              decoration: new InputDecoration(
                  labelText: 'Enter your phone',
                  hintText: 'Enter a phone number',
                  icon: const Icon(Icons.phone),
                  labelStyle: new TextStyle(
                      decorationStyle: TextDecorationStyle.solid)),
            ),
            new TextFormField(
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter linkedin id';
                }
              },
              onSaved: (value) {
                resumeData.Linkedin = value!;
              },
              maxLines: 1,
              decoration: new InputDecoration(
                  labelText: 'Enter your Linkedin',
                  hintText: 'Enter a Linkedin profile',
                  icon: const Icon(MdiIcons.linkedin),
                  labelStyle: new TextStyle(
                      decorationStyle: TextDecorationStyle.solid)),
            ),
            new TextFormField(
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter github';
                }
              },
              onSaved: (value) {
                resumeData.github = value!;
              },
              maxLines: 1,
              decoration: new InputDecoration(
                  labelText: 'Enter your github',
                  hintText: 'Enter a github',
                  icon: const Icon(MdiIcons.github),
                  labelStyle: new TextStyle(
                      decorationStyle: TextDecorationStyle.solid)),
            ),
            new TextFormField(
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter mainrole';
                }
              },
              onSaved: (value) {
                resumeData.mainrole = value!;
              },
              maxLines: 1,
              decoration: new InputDecoration(
                  labelText: 'Enter your role',
                  hintText: 'Enter a mainrole',
                  icon: const Icon(Icons.work),
                  labelStyle: new TextStyle(
                      decorationStyle: TextDecorationStyle.solid)),
            ),
            new TextFormField(
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter description';
                }
              },
              onSaved: (value) {
                resumeData.self = value!;
              },
              maxLines: 1,
              decoration: new InputDecoration(
                  labelText: 'Enter About Yourself',
                  hintText: 'Enter a description',
                  icon: const Icon(Icons.face),
                  labelStyle: new TextStyle(
                      decorationStyle: TextDecorationStyle.solid)),
            )
          ],
        )),

    new Step(
        title: const Text('Experience Details'),
        //subtitle: const Text('Subtitle'),
        isActive: true,
        //state: StepState.editing,
        state: StepState.indexed,
        content: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter company name';
                  }
                },
                onSaved: (value) {
                  resumeData.company = value!;
                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your company name',
                    hintText: 'Enter a company name',
                    icon: const Icon(CupertinoIcons.building_2_fill),
                    labelStyle: new TextStyle(
                        decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter role ';
                  }
                },
                onSaved: (value) {
                  resumeData.roleincompany = value!;
                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your role',
                    hintText: 'Enter a role in compnay',
                    icon: const Icon(Icons.work),
                    labelStyle: new TextStyle(
                        decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter company from';
                  }
                },
                onSaved: (value) {
                  resumeData.fromcomanpy = value!;
                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your starting-date',
                    hintText: 'Enter a  year only',
                    icon: const Icon(MdiIcons.calendar),
                    labelStyle: new TextStyle(
                        decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter tocompany';
                  }
                },
                onSaved: (value) {
                  resumeData.tocompnay = value!;
                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter leaving date',
                    hintText: 'Enter in year only',
                    icon: const Icon(MdiIcons.calendar),
                    labelStyle: new TextStyle(
                        decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter company about';
                  }
                },
                onSaved: (value) {
                  resumeData.abooutcompany = value!;
                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your company details',
                    hintText: 'Enter a company details',
                    icon: const Icon(CupertinoIcons.building_2_fill),
                    labelStyle: new TextStyle(
                        decorationStyle: TextDecorationStyle.solid)),
              ),
            ),

          ],
        )),

    new Step(
        title: const Text('Education Details'),
        //subtitle: const Text('Subtitle'),
        isActive: true,
        //state: StepState.editing,
        state: StepState.indexed,
        content: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter company name';
                  }
                },
                onSaved: (value) {
                  resumeData.college = value!;
                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your college  name',
                    hintText: 'Enter a college name',
                    icon: const Icon(Icons.school),
                    labelStyle: new TextStyle(
                        decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter degree ';
                  }
                },
                onSaved: (value) {
                  resumeData.degree = value!;
                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your degree',
                    hintText: 'Enter a degree',
                    icon: const Icon(CupertinoIcons.book),
                    labelStyle: new TextStyle(
                        decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter company from';
                  }
                },
                onSaved: (value) {
                  resumeData.fromcollege = value!;
                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your year of start ',
                    hintText: 'Enter a from college',
                    icon: const Icon(MdiIcons.calendar),
                    labelStyle: new TextStyle(
                        decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter tocompany';
                  }
                },
                onSaved: (value) {
                  resumeData.tocollege = value!;
                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter tocollege',
                    hintText: 'Enter tocollege',
                    icon: const Icon(MdiIcons.calendar),
                    labelStyle: new TextStyle(
                        decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter company about';
                  }
                },
                onSaved: (value) {
                  resumeData.specialization = value!;
                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your specialization',
                    hintText: 'Enter a  specialization',
                    icon: const Icon(Icons.face),
                    labelStyle: new TextStyle(
                        decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter company state';
                  }
                },
                onSaved: (value) {
                  resumeData.gpa = value!;
                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your gpa',
                    hintText: 'Enter a gpa',
                    icon: const Icon(Icons.score),
                    labelStyle: new TextStyle(
                        decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
          ],
        )),
    //
    // new Step(
    //     title: const Text('Email'),
    //     // subtitle: const Text('Subtitle'),
    //     isActive: true,
    //     state: StepState.indexed,
    //     // state: StepState.disabled,
    //     content: new TextFormField(
    //       keyboardType: TextInputType.emailAddress,
    //       autocorrect: false,
    //       validator: (value) {
    //         if (value!.isEmpty || !value!.contains('@')) {
    //           return 'Please enter valid email';
    //         }
    //       },
    //       onSaved: (value) {
    //         data.email = value!;
    //       },
    //       maxLines: 1,
    //       decoration: new InputDecoration(
    //           labelText: 'Enter your email',
    //           hintText: 'Enter a email address',
    //           icon: const Icon(Icons.email),
    //           labelStyle:
    //           new TextStyle(decorationStyle: TextDecorationStyle.solid)),
    //     )),
    // new Step(
    //     title: const Text('Company'),
    //     //subtitle: const Text('Enter your name'),
    //     isActive: true,
    //     //state: StepState.error,
    //     state: StepState.indexed,
    //     content: new TextFormField(
    //       focusNode: _focusNode,
    //       keyboardType: TextInputType.text,
    //       autocorrect: false,
    //       onSaved: ( value) {
    //         data.company = value!;
    //       },
    //       maxLines: 1,
    //       //initialValue: 'Aseem Wangoo',
    //       validator: (value) {
    //         if (value!.isEmpty || value.length < 1) {
    //           return 'Please enter company name';
    //         }
    //       },
    //       decoration: new InputDecoration(
    //           labelText: 'Enter your company name',
    //           hintText: 'Enter a company name',
    //           //filled: true,
    //           icon: const Icon(CupertinoIcons.building_2_fill),
    //           labelStyle:
    //           new TextStyle(decorationStyle: TextDecorationStyle.solid)),
    //     )),
    // new Step(
    //     title: const Text('City'),
    //     //subtitle: const Text('Enter your name'),
    //     isActive: true,
    //     //state: StepState.error,
    //     state: StepState.indexed,
    //     content: new TextFormField(
    //       focusNode: _focusNode,
    //       keyboardType: TextInputType.text,
    //       autocorrect: false,
    //       onSaved: ( value) {
    //         data.city = value!;
    //       },
    //       maxLines: 1,
    //       //initialValue: 'Aseem Wangoo',
    //       validator: (value) {
    //         if (value!.isEmpty || value.length < 1) {
    //           return 'Please enter company city';
    //         }
    //       },
    //       decoration: new InputDecoration(
    //           labelText: 'Enter your company city',
    //           hintText: 'Enter a company city',
    //           //filled: true,
    //           icon: const Icon(CupertinoIcons.circle),
    //           labelStyle:
    //           new TextStyle(decorationStyle: TextDecorationStyle.solid)),
    //     )),
    // new Step(
    //     title: const Text('Website'),
    //     //subtitle: const Text('Enter your name'),
    //     isActive: true,
    //     //state: StepState.error,
    //     state: StepState.indexed,
    //     content: new TextFormField(
    //       focusNode: _focusNode,
    //       keyboardType: TextInputType.text,
    //       autocorrect: false,
    //       onSaved: ( value) {
    //         data.website = value!;
    //       },
    //       maxLines: 1,
    //       //initialValue: 'Aseem Wangoo',
    //       validator: (value) {
    //         if (value!.isEmpty || value.length < 1) {
    //           return 'Please enter company website';
    //         }
    //       },
    //       decoration: new InputDecoration(
    //           labelText: 'Enter your company website',
    //           hintText: 'Enter a company website',
    //           //filled: true,
    //           icon: const Icon(CupertinoIcons.circle),
    //           labelStyle:
    //           new TextStyle(decorationStyle: TextDecorationStyle.solid)),
    //     )),
    // new Step(
    //     title: const Text('Address'),
    //     //subtitle: const Text('Enter your name'),
    //     isActive: true,
    //     //state: StepState.error,
    //     state: StepState.indexed,
    //     content: new TextFormField(
    //       focusNode: _focusNode,
    //       keyboardType: TextInputType.text,
    //       autocorrect: false,
    //       onSaved: ( value) {
    //         data.add = value!;
    //       },
    //       maxLines: 1,
    //       //initialValue: 'Aseem Wangoo',
    //       validator: (value) {
    //         if (value!.isEmpty || value.length < 1) {
    //           return 'Please enter company office address';
    //         }
    //       },
    //       decoration: new InputDecoration(
    //           labelText: 'Enter your company address',
    //           hintText: 'Enter a company address',
    //           //filled: true,
    //           icon: const Icon(Icons.home),
    //           labelStyle:
    //           new TextStyle(decorationStyle: TextDecorationStyle.solid)),
    //     )),
    //
    //
    // new Step(
    //     title: const Text('State'),
    //     //subtitle: const Text('Enter your name'),
    //     isActive: true,
    //     //state: StepState.error,
    //     state: StepState.indexed,
    //     content: new TextFormField(
    //       focusNode: _focusNode,
    //       keyboardType: TextInputType.text,
    //       autocorrect: false,
    //       onSaved: ( value) {
    //         data.state = value!;
    //       },
    //       maxLines: 1,
    //       //initialValue: 'Aseem Wangoo',
    //       validator: (value) {
    //         if (value!.isEmpty || value.length < 1) {
    //           return 'Please enter state';
    //         }
    //       },
    //       decoration: new InputDecoration(
    //           labelText: 'Enter your state',
    //           hintText: 'Enter a state',
    //           //filled: true,
    //           icon: const Icon(Icons.person),
    //           labelStyle:
    //           new TextStyle(decorationStyle: TextDecorationStyle.solid)),
    //     )),
    //
    // new Step(
    //     title: const Text('Mainrole'),
    //     //subtitle: const Text('Enter your name'),
    //     isActive: true,
    //     //state: StepState.error,
    //     state: StepState.indexed,
    //     content: new TextFormField(
    //       focusNode: _focusNode,
    //       keyboardType: TextInputType.text,
    //       autocorrect: false,
    //       onSaved: ( value) {
    //         data.mainrole = value!;
    //       },
    //       maxLines: 1,
    //       //initialValue: 'Aseem Wangoo',
    //       validator: (value) {
    //         if (value!.isEmpty || value.length < 1) {
    //           return 'Please enter mainrole';
    //         }
    //       },
    //       decoration: new InputDecoration(
    //           labelText: 'Enter your role',
    //           hintText: 'Enter a role',
    //           //filled: true,
    //           icon: const Icon(Icons.work),
    //           labelStyle:
    //           new TextStyle(decorationStyle: TextDecorationStyle.solid)),
    //     )),
    // new Step(
    //     title: const Text('Pincode'),
    //     // subtitle: const Text('Subtitle'),
    //     isActive: true,
    //     state: StepState.indexed,
    //     content: new TextFormField(
    //       keyboardType: TextInputType.number,
    //       autocorrect: false,
    //       validator: (value) {
    //         if (value!.isEmpty || value.length > 6) {
    //           return 'Please enter valid pincode';
    //         }
    //       },
    //       maxLines: 1,
    //       onSaved: ( value) {
    //         data.pincode = value!;
    //       },
    //       decoration: new InputDecoration(
    //           labelText: 'Enter your city code',
    //           hintText: 'Enter picode',
    //           icon: const Icon(Icons.explicit),
    //           labelStyle:
    //           new TextStyle(decorationStyle: TextDecorationStyle.solid)),
    //     )),

    // new Step(
    //     title: const Text('Fifth Step'),
    //     subtitle: const Text('Subtitle'),
    //     isActive: true,
    //     state: StepState.complete,
    //     content: const Text('Enjoy Step Fifth'))
  ];

  @override
  Widget build(BuildContext context) {
    void showSnackBarMessage(String message,
        [MaterialColor color = Colors.red]) {
      Scaffold.of(context)
          .showSnackBar(new SnackBar(content: new Text(message)));
    }

    void _submitDetails() {
      final FormState? formState = _formKey.currentState;

      if (!formState!.validate()) {
        showSnackBarMessage('Please enter correct data');
      } else {
        formState.save();
        // print("Name: ${data.name}");
        // print("Phone: ${data.phone}");
        // print("Email: ${data.email}");
        // print("Age: ${data.mainrole}");
        // put_Bcardinfo(data.name, data.phone, data.email, data.mainrole, data.company, data.website, data.add,data.city,data.state,data.pincode);
        // put_Personaldetails(
        //   resumeData.name,
        //   resumeData.phone,
        //   resumeData.email,
        //   resumeData.Linkedin,

      //   String Rname,
      //       String Rphone,
      // String Remail,
      // String Rlinkedin,
      // String Rmainrole,
      // String Rgithub,
      // String Rdescription,
        //   resumeData.mainrole,
        //   resumeData.company,
        //   resumeData.website,
        //   resumeData.add,
        //   resumeData.city,
        //   resumeData.state,
        //   resumeData.pincode,
        // );
        put_Personaldetails(resumeData.name, resumeData.phone,resumeData.email, resumeData.Linkedin, resumeData.mainrole, resumeData.github, resumeData.self);
      put_Experience(resumeData.company, resumeData.roleincompany, resumeData.fromcomanpy, resumeData.tocompnay, resumeData.abooutcompany);
      put_Educationdetails(resumeData.college, resumeData.degree, resumeData.fromcollege, resumeData.tocollege, resumeData.specialization, resumeData.gpa);
        //TODO
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ResumeNavigation()),
        );

        //
        // showDialog(
        //     builder: (context) => new AlertDialog(
        //       title: new Text("Details"),
        //       //content: new Text("Hello World"),
        //       content: new SingleChildScrollView(
        //         child: new ListBody(
        //           children: <Widget>[
        //             new Text("Name : " + data.name),
        //             new Text("Phone : " + data.phone),
        //             new Text("Email : " + data.email),
        //             new Text("Age : " + data.mainrole),
        //           ],
        //         ),
        //       ),
        //       actions: <Widget>[
        //         new FlatButton(
        //           child: new Text('OK'),
        //           onPressed: () {
        //             Navigator.of(context).pop();
        //           },
        //         ),
        //       ],
        //     ), context: context);
      }
    }

    return new Container(
        child: new Form(
      key: _formKey,
      child: new ListView(children: <Widget>[
        new Stepper(
          steps: steps,
          type: StepperType.vertical,
          currentStep: this.currStep,
          onStepContinue: () {
            setState(() {
              if (currStep < steps.length - 1) {
                currStep = currStep + 1;
              } else {
                currStep = 0;
              }
              // else {
              // Scaffold
              //     .of(context)
              //     .showSnackBar(new SnackBar(content: new Text('$currStep')));

              // if (currStep == 1) {
              //   print('First Step');
              //   print('object' + FocusScope.of(context).toStringDeep());
              // }

              // }
            });
          },
          onStepCancel: () {
            setState(() {
              if (currStep > 0) {
                currStep = currStep - 1;
              } else {
                currStep = 0;
              }
            });
          },
          onStepTapped: (step) {
            setState(() {
              currStep = step;
            });
          },
        ),
        new RaisedButton(
          child: new Text(
            'Save details',
            style: new TextStyle(color: Colors.white),
          ),
          onPressed: _submitDetails,
          color: Colors.blue,
        ),

      ]),
    ));
  }
}
