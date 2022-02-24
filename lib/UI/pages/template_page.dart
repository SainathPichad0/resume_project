import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
class TemplateListPage extends StatefulWidget {


  @override
  _TemplateListPageState createState() => _TemplateListPageState();
}

class _TemplateListPageState extends State<TemplateListPage> {

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
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: getdata,
            child: Text("taa["),
          )
        ],
      ),
    );
  }
}
