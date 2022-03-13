import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
class Bcard_Templates extends StatefulWidget {


  @override
  _Bcard_TemplatesState createState() => _Bcard_TemplatesState();
}

class _Bcard_TemplatesState extends State<Bcard_Templates> {

  Box ?boxx;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openBox();
  }

  Future openBox()async{
    //var dir=await getApplicationDocumentsDirectory();
    // Hive.init(dir.path);
    boxx=await Hive.openBox('test');
    return;
  }
  void getdata(){
    var x=  boxx!.get('phone');
    print(boxx!.get('companyname'));
    print(boxx!.get('job'));
    print(boxx!.get('startdate'));
    print(boxx!.get('enddate'));
    print(boxx!.get('description'));

    print(x);

    //TODO
    print(boxx!.get('college'));
    print(boxx!.get('state'));
    print(boxx!.get('degree'));
    print(boxx!.get('field'));
    print(boxx!.get('gpa'));


  }
  @override
  Widget build(BuildContext context) {
    Color  bacground=Colors.white;
    return Scaffold(
backgroundColor: bacground,
      body:ListView.builder(
        itemCount: 24,

        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Card(
              elevation: 7,
              child:  GestureDetector(


                onTap: (){
                  print("tapp");
                  bacground=Colors.orange;
                  setState(() {


                  });
                },

                child: Image.asset('assets/bcardimg/bcard${index+1}.png',

                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        })
    );
  }
}
