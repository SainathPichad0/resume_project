import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/UI/templates/resume3/pdf_invoice_api.dart';
import 'package:my_resume/WIDGETS_REUSABLE/profile_edu_work_colum.dart';



class Resumepage13 extends StatelessWidget {



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

  Resumepage13({
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
          title: Text(""),
          backgroundColor: Colors.purple,
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
                    name,
                    style: TextStyle(
                        fontSize: 24*kh*h,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    mainrole,
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
                height: 25,
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
                                    descperson,
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
                              for(int i=0;i<skillsList.length;i++)
                                skillrow(skill: skillsList[i]),

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
                              contactrow(titlle: "Mobile", val: phone),
                              Wrap(
                                children: [
                                  contactrow(titlle: "Email", val: email),
                                ],
                              ),
                              Wrap(
                                children: [
                                  contactrow(titlle: "LinkdeIn", val: linkedin)
                                ],
                              )
                              ,
                              Wrap(
                                children: [
                                  contactrow(titlle: "GitHub", val: github),
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
                                    mainrole,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15*kh*h),
                                  ),
                                  SizedBox(
                                    height: 4*kh*h,
                                  ),
                                  Text(
                                    fromcompany+"-"+tocompany,
                                    style: TextStyle(fontSize: 10*kh*h),
                                  ),
                                  SizedBox(
                                    height: 4*kh*h,
                                  ),
                                  Text(
                           aboutcompany,
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
                                    college,
                                    style: TextStyle(fontSize: 13*kh*h),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4*kh*h,
                              ),
                              Text(
                                fromcollege+"-"+tocollege,
                                style: TextStyle(fontSize: 12*kh*h),
                              ),
                              Divider(),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                degree,
                                style: TextStyle(fontSize: 12*kh*h),
                              ),
                              SizedBox(
                                height: 4*kh*h,
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    specialization,
                                    style: TextStyle(fontSize: 12*kh*h),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "GPA ${gpa  }",
                                style: TextStyle(fontSize: 12,

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
          height: 5.h,
        ),
        Container(
          height: 5.h,
          color: Colors.lightBlueAccent,
          width: 40.w,
        )
      ],
    );
  }
}

//
// class Resumepage12 extends StatelessWidget {
//   const Resumepage12({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 24.w),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 52.h,
//               ),
//               Text("Sign up to gameoppp",style: TextStyle(
//                 fontSize: 18.sp,
//                 fontWeight: FontWeight.w700,
//
//               ),),
//               SizedBox(
//                 height: 4.h,
//               ),
//             Wrap(
//               children: [
//                 Text("Alredy have an account? ",style: TextStyle(
//                   fontSize:14.sp,
//                   color: Colors.grey,
//                   fontWeight: FontWeight.w600,
//
//                 ),),
//                 Text("Login",style: TextStyle(
//                   fontSize:14.sp,
//                   color: Colors.purple,
//                   fontWeight: FontWeight.w700,
//
//                 ),)
//               ],
//             ),
//               SizedBox(
//                 height: 24.h,
//               ),
//               getTextFild("First Name"),
//               SizedBox(
//                 height: 16.h,
//               ),
//               getTextFild("Email"),   SizedBox(
//                 height: 16.h,
//               ),  getTextFild("Password"),
//               SizedBox(
//                 height: 16.h,
//               ),
//               getTextFild("Confirm Password"),
//               SizedBox(
//                 height: 16.h,
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 child: TextButton(onPressed: null,
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all(Colors.purple),
//                       foregroundColor: MaterialStateProperty.all(Colors.white),
//                       padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h,))
//                     ,
//                       textStyle: MaterialStateProperty.all(TextStyle(
//                         fontSize: 14.sp,
//                         fontWeight: FontWeight.w700
//                       ))
//                     ),
//                     child:Text("Create Account")),
//               ),
//               SizedBox(
//                 height: 16.h,
//               ),
//               Row(
//                 children: [
//                   Expanded(child: Divider()),
//                   SizedBox(
//                     width: 16.w,
//                   ),
//                   Text("or sign up via",style: TextStyle(
//                       color:Colors.grey,
//                       fontSize: 15.sp),),
//                   SizedBox(
//                     width: 16.w,
//                   ),
//                   Expanded(child: Divider()),
//
//                 ],
//               ),
//
//               SizedBox(
//                 height: 16.h,
//               ),
//               SizedBox(
//                 width: double.infinity,
//                 child: TextButton(onPressed: null,
//                     style: ButtonStyle(
//                        // backgroundColor: MaterialStateProperty.all(Colors.purple),
//                         foregroundColor: MaterialStateProperty.all(Colors.black87
//                         ),
//                         padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 14.h,))
//                         ,
//                         textStyle: MaterialStateProperty.all(TextStyle(
//                             fontSize: 14.sp,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w700
//                         ))
//                     ),
//                     child:Text("Google")),
//               ),
//               SizedBox(
//                 height: 16.h,
//               ),
//               Wrap(
//                 children: [
//                   Text("By signing up to my page you agree to our",style: TextStyle(
//                     fontSize:14.sp,
//                     color: Colors.black87,
//                     fontWeight: FontWeight.w600,
//
//                   ),),
//                   Text(" terms and codition",style: TextStyle(
//                     fontSize:14.sp,
//                     color: Colors.blue,
//                     fontWeight: FontWeight.w700,
//
//                   ),)
//                 ],
//               ),
//             ],
//           ),
//         )
//       ),
//     );
//   }
// }
//
// getTextFild(String hinttext) {
//   return TextField(
//     decoration: InputDecoration(
//         border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(8.r),
//             borderSide: BorderSide(color: Colors.transparent,width: 0)
//
//
//         ),
//         contentPadding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 14.h),
//         filled: true,
//         hintStyle: TextStyle(
//             fontSize: 14.sp,
//             fontWeight: FontWeight.w400
//         ),
//         fillColor: Colors.grey[100],
//         hintText: hinttext
//     ),
//
//
//   );
// }
