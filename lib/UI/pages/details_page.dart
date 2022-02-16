import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/UI/pages/template_page.dart';
class DetailsPage extends StatefulWidget {


  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {

  final _formKey = GlobalKey<FormState>();
  final _formkey2=GlobalKey<FormState>();//form kkey
  final _formkey3=GlobalKey<FormState>();
  final _formkey4=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Your Details"),
      actions: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_){
              return TemplatePage();

            }));
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
                      child: Text(
                        "Personal Details",
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
                                maxLength: 10,
                                validator: (value) {
                                  if (value == null || value.length<10) {
                                    return 'Please enter valid phone number';
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
                                validator: (value) {
                                  if (value == null || !value.contains("@gmail.com")) {
                                    return 'Please enter valid email';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  icon: const Icon(Icons.location_city),
                                  hintText: 'Enter your city name',
                                  labelText: 'City',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter city name';
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
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter state name';
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
                                      const SnackBar(content: Text('Saved')),
                                    );
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
                                maxLength: 10,
                                validator: (value) {
                                  if (value == null || value.length<10) {
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
                                maxLength: 10,
                                validator: (value) {
                                  if (value == null || value.length<10) {
                                    return 'Please enter valid ';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  icon: const Icon(Icons.add),
                                  hintText: 'PERCENTAGE/GPA',
                                  labelText: 'GPA',
                                ),

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
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter name ';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  icon: const Icon(CupertinoIcons.building_2_fill),
                                  hintText: 'Android Developer',
                                  labelText: 'JOB TITLE',
                                ),
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
                                  hintText: 'Start Date',
                                  labelText: 'Date',
                                ),
                                maxLength: 10,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please start date ';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  icon: const Icon(Icons.deck),
                                  hintText: 'Tell us more about your job title',
                                  labelText: 'Description',
                                ),
                                maxLength: 100,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              TextFormField(
                                decoration: const InputDecoration(
                                  icon: const Icon(Icons.add),
                                  hintText: 'Coding',
                                  labelText: 'Skill 1',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter valid skill ';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  icon: const Icon(Icons.add),
                                  hintText: 'Flutter',
                                  labelText: 'Skill 2',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter valid skill ';
                                  }
                                  return null;
                                },
                              ),TextFormField(
                                decoration: const InputDecoration(
                                  icon: const Icon(Icons.add),
                                  hintText: 'ML/AI',
                                  labelText: 'Skill 3',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter valid skill ';
                                  }
                                  return null;
                                },
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  icon: const Icon(Icons.add),
                                  hintText: 'Python',
                                  labelText: 'Skill 4',
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter valid skill ';
                                  }
                                  return null;
                                },
                              ),TextFormField(
                                decoration: const InputDecoration(
                                  icon: const Icon(Icons.add),
                                  hintText: 'Singing',
                                  labelText: 'Skill 5',
                                ),
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
                                      const SnackBar(content: Text('Saved')),
                                    );
                                  }
                                },
                                child: Container(
                                    margin: EdgeInsets.only(top: 40),
                                    child: Center(child: Chip(label:Text("Save & Next")))),
                              ),





                            ],
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
}
