import 'package:flutter/material.dart';

import '../../main.dart';

class Resume_Ui_Dusplay_Page extends StatefulWidget {
  const Resume_Ui_Dusplay_Page({Key? key}) : super(key: key);

  @override
  _Resume_Ui_Dusplay_PageState createState() => _Resume_Ui_Dusplay_PageState();
}

class _Resume_Ui_Dusplay_PageState extends State<Resume_Ui_Dusplay_Page> {
  void showing()async{
   String  compnayname= await boxList[1].get('Rcompany');
    print(compnayname);
  String  email=await boxList[1].get('Rcompanyrole');
   // mainrole=await boxList[0].get('Bmainrole');
   String phone= await boxList[1].get('Rcompnay_fromdate');
   print(phone);
   print(email);
    // address=await boxList[0].get('Baddress');
    // city= await boxList[0].get('Bcity');
    // pincode=await boxList[0].get('Bpincode');
    // state= await boxList[0].get('Bsate');
    // website=await boxList[0].get('Bwebsite');
   // await boxList[1].put('Rcompany', Rcompany);
   // await boxList[1].put('Rcompanyrole', Rcomanyrole);
   // await boxList[1].put('Rcompnay_fromdate', Rfromcompany);
   // await boxList[1].put('Rcompnay_todate', Rtocompnay);
   //
   //  company=await boxList[0].get('Bcompany');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: showing, icon:Icon(
      Icons.add
    )
          )]
      ),
    );
  }
}
