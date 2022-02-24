
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:my_resume/UI/pages/template_page.dart';

import 'package:my_resume/main.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
class DetailsPage extends StatefulWidget {


  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final _formKey = GlobalKey<FormState>();

  final _formkey2=GlobalKey<FormState>();
//form kkey
  final _formkey3=GlobalKey<FormState>();

  final _formkey4=GlobalKey<FormState>();

//TODO PPERSONAL CONTROLLER FOR INPUT
  TextEditingController name_controller=TextEditingController();

  TextEditingController phone_controller=TextEditingController();

  TextEditingController email_controller=TextEditingController();

  TextEditingController github_controller=TextEditingController();

  TextEditingController linkedin_controller=TextEditingController();

  TextEditingController about_controller=TextEditingController();

  //TODO EDUCATION CONTROLLER
  TextEditingController college_controller=TextEditingController();

  TextEditingController state_controller=TextEditingController();

  TextEditingController degree_controller=TextEditingController();

  TextEditingController field_controller=TextEditingController();

  TextEditingController gpa_controller=TextEditingController();


  // void add_education(String college,String state,String degree,String field,String gpa,)async{
  //TODO Ewokr CONTROLLER
  TextEditingController companyname_controller=TextEditingController();

  TextEditingController title_controller=TextEditingController();

  // TextEditingController description_controller=TextEditingController();
  //
  // TextEditingController enddate_controller=TextEditingController();
  String ?startingdate;
  String ?enddate;
  TextEditingController description_controller=TextEditingController();





  Box ?box;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openBox();
  }

  Future openBox()async{
    var dir=await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    box=await Hive.openBox('test');
    return;
  }

  void put_personal_data(String name,String phone,String email,String github,String linkedin,String about){
    box!.put('name',name);
    box!.put('phone', phone);
    box!.put('email',email);
    box!.put('github',github);
    box!.put('linkedin',linkedin);
    box!.put('about', about);

  }
  void put_education_data(String collge,String state,String degree,String field,String gpa,){
    box!.put('college',collge);
    box!.put('state', state);
    box!.put('degree',degree);
    box!.put('field',field);
    box!.put('gpa',gpa);
    // box!.put('about', about);

  }
  void put_work_data(String companyname,String job,String stardate,String enddate,String description,){
    box!.put('companyname',companyname);
    box!.put('job',job);
    box!.put('startdate',stardate);
    box!.put('enddate',enddate);
    box!.put('description',description);
    // box!.put('about', about);

  }
  void put_skills(String skill1,String skill2,String skill3,String skill4,String skill5,){
    box!.put('skill1',skill1);
    box!.put('skill2', skill2);
    box!.put('skill3',skill3);
    box!.put('skill4',skill4);
    box!.put('skill5',skill5);
    // box!.put('about', about);

  }

  void getdata(){
    var x=  box!.get('phone');
    print(box!.get('companyname'));
    print(box!.get('job'));
    print(box!.get('startdate'));
    print(box!.get('enddate'));
    print(box!.get('description'));

//   print(x);
//
//   //TODO
// print(box!.get('college'));
// print(box!.get('state'));
// print(box!.get('degree'));
// print(box!.get('field'));
// print(box!.get('gpa'));
//

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Your Details"),
        actions: [
          InkWell(
            onTap: ()async{
              //
              // getdata();
              // Navigator.push(context, MaterialPageRoute(builder: (_){
              //   return TemplateListPage();
              // }));


              // setState(() {
              //
              //
              //   if(_formKey.currentState!.validate()&&_formkey2.currentState!.validate()&&_formkey3.currentState!.validate()&&_formkey4.currentState!.validate()){
              //     ScaffoldMessenger.of(context).showSnackBar(
              //       const SnackBar(content: Text('All Details Saved')),
              //     );
              //     Navigator.push(context, MaterialPageRoute(builder: (_){
              //       return Resume1_page();
              //     }));
              //   }
              // });
            },

            child: Chip(

              backgroundColor: CupertinoColors.systemPurple,
              label: Text("SUBMIT",style: TextStyle(
                  color: Colors.white
              ),),
            ),
          ),
          SizedBox(
            width: 6,
          )
        ],


      ),

      body: SingleChildScrollView(

        child:   Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),

              child: Column(
                children: [
                  //TODO PERSONAL DETAULS TO STORE
                  Row(
                    children: [
                      InkWell(
                          onTap: () {

                          },
                          child: Icon(Icons.person)),
                      Container(
                        margin: EdgeInsets.only(left: 9),
                        child: GestureDetector(
                          onTap: (){

                          },
                          child: Text(
                            "Personal Details",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: CupertinoColors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(

                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5)
                        ,
                        border: Border.all()
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                TextFormField(

                                  decoration: const InputDecoration(
                                    icon: const Icon(Icons.person),
                                    hintText: 'Enter your name',
                                    labelText: 'Name',

                                  ),

                                  controller: name_controller,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter name ';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(Icons.phone),
                                    hintText: 'Enter a phone number',
                                    labelText: 'Phone',
                                  ),
                                  controller: phone_controller,

                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please valid phone number';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(Icons.email),
                                    hintText: 'Enter your Email Id',
                                    labelText: 'Email',
                                  ),
                                  controller: email_controller,
                                  validator: (value) {
                                    if (value == null || !value.contains("@gmail.com")) {
                                      return 'Please enter valid email';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(MdiIcons.github),
                                    hintText: 'Enter your github name',
                                    labelText: 'Github',
                                  ),
                                  controller:github_controller ,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter github profile';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(MdiIcons.linkedin),
                                    hintText: 'Enter your profile url',
                                    labelText: 'Linkedin',
                                  ),
                                  controller: linkedin_controller,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter linkedin profil';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(Icons.star),
                                    hintText: 'Enter something about yourself',
                                    labelText: 'About',
                                  ),
                                  maxLength: 50,
                                  controller: about_controller,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },

                                ),

                                InkWell(
                                  onTap: (){
                                    //TODO valide form

                                    if(_formKey.currentState!.validate()){


                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(content: Text('Saved To DB')),
                                      );
                                      put_personal_data(name_controller.text,phone_controller.text,email_controller.text,github_controller.text,linkedin_controller.text,about_controller.text);

                                    }
                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(top: 40),
                                      child: Center(child: Chip(label:Text("Save")))),
                                )



                              ],
                            ),
                          ),
                        )
                      ],

                    ),
                  ),


                  Row(
                    children: [
                      InkWell(
                          onTap: () {

                          },
                          child: Icon(Icons.school)),
                      Container(
                        margin: EdgeInsets.only(left: 9),
                        child: Text(
                          "Education",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.black),
                        ),
                      )
                    ],
                  ),
                  Container(

                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5)
                        ,
                        border: Border.all()
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            key: _formkey2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(CupertinoIcons.building_2_fill),
                                    hintText: 'Enter your college name',
                                    labelText: 'College',
                                  ),
                                  controller: college_controller,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter name ';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(Icons.home),
                                    hintText: 'Enter your state name',
                                    labelText: 'State',
                                  ),
                                  controller: state_controller,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter state name';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(Icons.school),
                                    hintText: 'Enter a your degree',
                                    labelText: 'Degree',
                                  ),

                                  controller: degree_controller,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter valid details';
                                    }
                                    return null;
                                  },
                                ),

                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(Icons.error),
                                    hintText: 'Enter field of study',
                                    labelText: 'Field ',
                                  ),
                                  controller: field_controller,

                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter valid ';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(Icons.star_border),
                                    hintText: 'PERCENTAGE/GPA',
                                    labelText: 'GPA',
                                  ),
                                  controller: gpa_controller,

                                  validator: (value) {
                                    if (value == null ) {
                                      return 'Please enter valid gpa';
                                    }
                                    return null;
                                  },
                                ),


                                InkWell(
                                  onTap: (){
                                    //TODO valide form
                                    if(_formkey2.currentState!.validate()){
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(content: Text('Saved')),
                                      );
                                      put_education_data(college_controller.text, state_controller.text, degree_controller.text, field_controller.text, gpa_controller.text);


                                    }
                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(top: 40),
                                      child: Center(child: Chip(label:Text("Save & Next")))),
                                )



                              ],
                            ),
                          ),
                        )
                      ],

                    ),
                  ),



                  //TODO work FORM
                  Row(
                    children: [
                      InkWell(
                          onTap: () {

                          },
                          child: Icon(Icons.work)),
                      Container(
                        margin: EdgeInsets.only(left: 9),
                        child: Text(
                          "Work Experience",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.black),
                        ),
                      )
                    ],
                  ),
                  Container(

                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5)
                        ,
                        border: Border.all()
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            key: _formkey3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(CupertinoIcons.building_2_fill),
                                    hintText: 'Enter your commpany name',
                                    labelText: 'EMPLOYER',
                                  ),
                                  controller: companyname_controller,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter name ';
                                    }
                                    return null;
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(CupertinoIcons.pen),
                                    hintText: 'Android Developer',
                                    labelText: 'JOB TITLE',
                                  ),
                                  controller: title_controller,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter name ';
                                    }
                                    return null;
                                  },
                                ),

                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(Icons.calendar_today),
                                    hintText:'Enter start date',
                                    labelText: 'Start Date',
                                  ),


                                  // validator: (value) {
                                  //   if (value == null || value.isEmpty) {
                                  //     return 'Please start date ';
                                  //   }
                                  //   return null;
                                  // },
                                  onTap: ()async{
                                    DateTime? startDatee=    await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(), firstDate:DateTime(1975), lastDate: DateTime(2023));

                                    if(startDatee==null)return;
                                    setState(() {
                                      startingdate=startDatee.toString();
                                      print(startingdate);
                                    });
                                  },
                                ),

                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(Icons.calendar_today),
                                    hintText:'Enter end date',
                                    labelText: 'End Date',
                                  ),
                                  // maxLength: 10,
                                  // validator: (value) {
                                  //   if (value == null || value.isEmpty) {
                                  //     return 'Please start date ';
                                  //   }
                                  //   return null;
                                  // },
                                  onTap: ()async{
                                    DateTime? eDatee=    await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(), firstDate:DateTime(1975), lastDate: DateTime(2023));

                                    if(eDatee==null)return;
                                    setState(() {
                                      enddate=eDatee.toString();
                                      print(enddate);
                                    });
                                  },
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    icon: const Icon(Icons.face),
                                    hintText: 'Tell us more about your job title',
                                    labelText: 'Description',
                                  ),
                                  controller: description_controller,
                                  maxLength: 70,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter valid ';
                                    }
                                    return null;
                                  },
                                ),



                                InkWell(
                                  onTap: (){
                                    //TODO valide form
                                    if(_formkey3.currentState!.validate()){
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(content: Text('Saved')),
                                      );

                                      put_work_data(companyname_controller.text,
                                          title_controller.text,
                                          startingdate.toString(), enddate.toString(), description_controller.text);
                                    }
                                  },
                                  child: Container(
                                      margin: EdgeInsets.only(top: 40),
                                      child: Center(child: Chip(label:Text("Save & Next")))),
                                )



                              ],
                            ),
                          ),
                        )
                      ],

                    ),
                  ),



                  //TODO SKILLS FORM
                  Row(
                    children: [
                      InkWell(
                          onTap: () {

                          },
                          child: Icon(Icons.star)),
                      Container(
                        margin: EdgeInsets.only(left: 9),
                        child: Text(
                          "Skills",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: CupertinoColors.black),
                        ),
                      )
                    ],
                  ),
                  Container(

                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5)
                        ,
                        border: Border.all()
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Form(
                            key: _formkey4,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[

                                  Text("Enter Your Top 5 Skills",style: TextStyle(

                                  ),),

                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextFormField(

                                    decoration: const InputDecoration(

                                      hintText: 'App Development/Web Deveopment',
                                      labelText: 'Enter skill 1 ',
                                    ),
                                    controller: skill1_controller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter valid skill ';
                                      }
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(

                                      hintText: 'Java, ',
                                      labelText: 'Enter skill 2 ',
                                    ),
                                    controller: skill2_controller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter valid skill ';
                                      }
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(

                                      hintText: 'PHP/CPP/PYTHON',
                                      labelText: 'Enter skill 3',
                                    ),
                                    controller: skill3_controller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter valid skill ';
                                      }
                                      return null;
                                    },
                                  ),
                                  TextFormField(
                                    decoration: const InputDecoration(

                                      hintText: 'ML/AI',
                                      labelText: 'Enter skill 4',
                                    ),
                                    controller: skill4_controller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter valid skill ';
                                      }
                                      return null;
                                    },
                                  ),

                                  TextFormField(
                                    decoration: const InputDecoration(

                                      hintText: 'Flutter',
                                      labelText: 'Enter skill 5 ',
                                    ),
                                    controller: skill5_controller,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Please enter valid skill ';
                                      }
                                      return null;
                                    },
                                  ),



                                  InkWell(
                                    onTap: (){
                                      //TODO valide form
                                      if(_formkey4.currentState!.validate()){
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(content: Text('Skills Saveed')),
                                        );

                                        put_skills(skill1_controller.text,
                                            skill2_controller.text, skill3_controller.text, skill4_controller.text, skill5_controller.text);
                                      }

                                    },
                                    child: Container(
                                        margin: EdgeInsets.only(top: 40),
                                        child: Center(child: Chip(label:Text("Save & Next")))),
                                  ),





                                ],
                              ),
                            ),
                          ),
                        )
                      ],

                    ),
                  ),




                ],
              ),
            ),




          ],
        ),


      ),
    );
  }

  //TODO skills CONTROLLER
  TextEditingController skill1_controller=TextEditingController();

  TextEditingController skill2_controller=TextEditingController();

  TextEditingController skill3_controller=TextEditingController();

  TextEditingController skill4_controller=TextEditingController();

  TextEditingController skill5_controller=TextEditingController();


}
