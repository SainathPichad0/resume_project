import 'package:flutter/material.dart';


import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard1/mainui.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard1_permute1/mainui.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard2/mainui.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard3/mainui.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard4/mainui.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard4_permute1/mainui.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard4_permute2/mainui.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard5/mainui.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard6/mainui.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard7/mainui.dart';
import 'package:my_resume/UI/Business_Card/BusinessCard8/mainui.dart';
import 'package:my_resume/UI/Business_Card/bcard12/bcard12.dart';
import 'package:my_resume/UI/Business_Card/bcard13/bcard13.dart';
import 'package:my_resume/UI/Business_Card/bcard14/bcard14.dart';
import 'package:my_resume/UI/Business_Card/bcard15/bcard15.dart';
import 'package:my_resume/UI/Business_Card/bcard16/bcard16.dart';
import 'package:my_resume/UI/Business_Card/bcard17/bcard17.dart';
import 'package:my_resume/UI/Business_Card/bcard18/bcard18.dart';
import 'package:my_resume/UI/Business_Card/bcard19/bcard19.dart';
import 'package:my_resume/UI/Business_Card/bcard20/bcard20.dart';
import 'package:my_resume/UI/Business_Card/bcard21/bcard21.dart';
import 'package:my_resume/UI/Business_Card/bcard22/bacrd22page1.dart';
import 'package:my_resume/UI/Business_Card/bcard23/bcard23page.dart';
import 'package:my_resume/UI/Business_Card/bcard24/bcard24.dart';
import 'package:my_resume/UI/Business_Card/bcard25/bcard25page.dart';


class Bui extends StatefulWidget {

  @override
  _BuiState createState() => _BuiState();
}

class _BuiState extends State<Bui> {
  var name="hh";

  var email='gaurangshah4@gmail.com';
  String mainrole='Sales Executive';
  String phone= '7754050674';
  String address='B-19,Chetan Vihar';
  String  city= 'Lucknow';
  String  pincode='226024';
  String  state= 'Uttar Pradesh';
  String website= 'www.linkedin.com/gaurangshah';

  String company= 'One Percent';

  Box ?boxx;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openBox();
    name=boxx!.get('Bname');

  }

  Future openBox()async {
    //var dir=await getApplicationDocumentsDirectory();
    // Hive.init(dir.path);
    boxx = await Hive.openBox('test');

    return;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard1(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard1.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard2(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard2.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard4(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard4.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard5(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard5.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard6(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard6.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard7(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard7.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard8(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard8.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard9(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard9.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard10(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard10.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard11(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard11.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard12(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard12.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),     Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard13(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard13.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard14(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard14.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard15(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard15.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard16(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard16.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard17(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard17.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard3(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard3.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard18(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard18.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard19(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard19.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard20(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard20.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard21(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard21.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard22(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard22.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard23(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard23.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  bcard24(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard24.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Card(
                  elevation: 7,
                  child:  GestureDetector(


                    onTap: (){
                      print("tapp");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  Bcard25(name: name, mainrole: mainrole, email: email, phone: phone, website: website, company: company, address: address, city: city, state: state, pincode: pincode)),
                      );
                    },

                    child: Image.asset('assets/bcardimg/bcard25.png',

                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
