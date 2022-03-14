import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:my_resume/UI/pages/Bcard_Template_selction_page.dart';
import 'package:my_resume/UI/pages/b_UIs.dart';
import 'package:my_resume/UI/pages/details_page.dart';

import 'btemlating.dart';
import 'datclass.dart';

// }
//
class StepperBody extends StatefulWidget {
  @override
  _StepperBodyState createState() => new _StepperBodyState();
}

class _StepperBodyState extends State<StepperBody> {
  int currStep = 0;
  static var _focusNode = new FocusNode();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  static MyData data = new MyData();
  Box ?box;
  @override
  void initState() {
    super.initState();
    openBox();
    _focusNode.addListener(() {
      setState(() {});
      print('Has focus: $_focusNode.hasFocus');
    });
  }
  Future openBox()async{
    //var dir=await getApplicationDocumentsDirectory();
    // Hive.init(dir.path);
    box=await Hive.openBox('test');
    return;
  }

  void put_Bcardinfo(String Bname,String Bphone,String Bemail,String Bmainrole,String Bcompanyname,String Bwebsite,String Baddress,String Bcity,String Bstate,String Bpincode){
    box!.put('Bname',Bname);
    box!.put('Bphone', Bphone);
    box!.put('Bemail',Bemail);
    box!.put('Bmainrole',Bmainrole);
    box!.put('Bcompayname',Bcompanyname);
    box!.put('Bwebsite', Bwebsite);

    box!.put('Baddress',Baddress);
    box!.put('Bcity',Bcity);
    box!.put('Bstate', Bstate);
    box!.put('Bpincode', Bpincode);



  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }


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
                  if (value!.isEmpty ) {
                    return 'Please enter name';
                  }
                },
                onSaved: ( value) {
                  data.name = value!;

                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your name',
                    hintText: 'Enter a name',
                    icon: const Icon(Icons.person),
                    labelStyle:
                    new TextStyle(decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
            new TextFormField(
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              validator: (value) {
                if (value!.isEmpty || !value!.contains('@')) {
                  return 'Please enter valid email';
                }
              },
              onSaved: (value) {
                data.email = value!;
              },
              maxLines: 1,
              decoration: new InputDecoration(
                  labelText: 'Enter your email',
                  hintText: 'Enter a email address',
                  icon: const Icon(Icons.email),
                  labelStyle:
                  new TextStyle(decorationStyle: TextDecorationStyle.solid)),
            ),
            new TextFormField(
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              validator: (value) {
                if (value!.isEmpty ) {
                  return 'Please enter valid number';
                }
              },
              onSaved: (value) {
                data.phone = value!;
              },
              maxLines: 1,
              decoration: new InputDecoration(
                  labelText: 'Enter your phone',
                  hintText: 'Enter a phone number',
                  icon: const Icon(Icons.phone),
                  labelStyle:
                  new TextStyle(decorationStyle: TextDecorationStyle.solid)),
            ),
            new TextFormField(
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              validator: (value) {
                if (value!.isEmpty ) {
                  return 'Please enter mainrole';
                }
              },
              onSaved: (value) {
                data.mainrole = value!;
              },
              maxLines: 1,
              decoration: new InputDecoration(
                  labelText: 'Enter your role',
                  hintText: 'Enter a mainrole',
                  icon: const Icon(Icons.work),
                  labelStyle:
                  new TextStyle(decorationStyle: TextDecorationStyle.solid)),
            )
          ],
        )),

    new Step(
        title: const Text('Company Details'),
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
                  if (value!.isEmpty ) {
                    return 'Please enter company name';
                  }
                },
                onSaved: ( value) {
                  data.company = value!;

                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your company name',
                    hintText: 'Enter a company name',
                    icon: const Icon(CupertinoIcons.building_2_fill),
                    labelStyle:
                    new TextStyle(decorationStyle: TextDecorationStyle.solid)),
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty ) {
                    return 'Please enter company website';
                  }
                },
                onSaved: ( value) {
                  data.website = value!;

                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your company website',
                    hintText: 'Enter a company website',
                    icon: const Icon(CupertinoIcons.globe),
                    labelStyle:
                    new TextStyle(decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty ) {
                    return 'Please enter company city';
                  }
                },
                onSaved: ( value) {
                  data.city= value!;

                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your company city',
                    hintText: 'Enter a company city',
                    icon: const Icon(Icons.home),
                    labelStyle:
                    new TextStyle(decorationStyle: TextDecorationStyle.solid)),
              ),
            ),


            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty ) {
                    return 'Please enter pincode city';
                  }
                },
                onSaved: ( value) {
                  data.pincode= value!;

                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your picode of city',
                    hintText: 'Enter a pincode',
                    icon: const Icon(Icons.local_post_office),
                    labelStyle:
                    new TextStyle(decorationStyle: TextDecorationStyle.solid)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty ) {
                    return 'Please enter company address';
                  }
                },
                onSaved: ( value) {
                  data.add = value!;

                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your company address',
                    hintText: 'Enter a company address',
                    icon: const Icon(CupertinoIcons.location),
                    labelStyle:
                    new TextStyle(decorationStyle: TextDecorationStyle.solid)),
              ),
            ),

            Container(
              margin: EdgeInsets.only(bottom: 2),
              child: new TextFormField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                validator: (value) {
                  if (value!.isEmpty ) {
                    return 'Please enter company state';
                  }
                },
                onSaved: ( value) {
                  data.state = value!;

                },
                maxLines: 1,
                decoration: new InputDecoration(
                    labelText: 'Enter your company state',
                    hintText: 'Enter a company staate',
                    icon: const Icon(CupertinoIcons.circle),
                    labelStyle:
                    new TextStyle(decorationStyle: TextDecorationStyle.solid)),
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
      Scaffold
          .of(context)
          .showSnackBar(new SnackBar(content: new Text(message)));
    }

    void _submitDetails() {
      final FormState? formState = _formKey.currentState;

      if (!formState!.validate()) {
        showSnackBarMessage('Please enter correct data');
      } else {
        formState.save();
        print("Name: ${data.name}");
        print("Phone: ${data.phone}");
        print("Email: ${data.email}");
        print("Age: ${data.mainrole}");
        put_Bcardinfo(data.name, data.phone, data.email, data.mainrole, data.company, data.website, data.add,data.city,data.state,data.pincode);


        showDialog(
            builder: (context) => new AlertDialog(
              title: new Text("Details"),
              //content: new Text("Hello World"),
              content: new SingleChildScrollView(
                child: new ListBody(
                  children: <Widget>[
                    new Text("Name : " + data.name),
                    new Text("Phone : " + data.phone),
                    new Text("Email : " + data.email),
                    new Text("Age : " + data.mainrole),
                  ],
                ),
              ),
              actions: <Widget>[
                new FlatButton(
                  child: new Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ), context: context);
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

            new RaisedButton(
              child: new Text(
                'Next',
                style: new TextStyle(color: Colors.white),
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Bui()),
                );
              },
              color: Colors.red,
            ),
          ]),
        ));
  }
}