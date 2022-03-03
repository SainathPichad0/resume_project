import 'package:flutter/material.dart';


class Card1 extends StatelessWidget {
  //
  // String name;
  // String job;
  // String email;
  // String website;
  // String address;
  // String company_name;
  // String slogan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Center(
        child: Card(
          elevation: 10,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            height: 250,
            width: double.infinity,
       // decoration: BoxDecoration(
       //     border: Border.all(
       //       color: Colors.grey,
       //       width: 0.1
       //     )

            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                   Wrap(
                     children: [
                       Text("COMPANY NAME",style: TextStyle(color: Colors.black,

                           fontSize: 22,
                           fontWeight: FontWeight.w700),)
                     ],
                   ),
                    Wrap(
                      children: [
                        Text("GOOD THINGS TAKE TIMES",style: TextStyle(color: Color(0xff31bfe2),

                            fontSize: 10,

                            fontWeight: FontWeight.w700,
                          letterSpacing: 1
                        ),)
                      ],
                    )
                  ],
                )),




                Container(
                  margin: EdgeInsets.symmetric(vertical: 23,horizontal: 20
                  ),
                  height: double.infinity,
                  width: 3,
                  color: Colors.grey,

                ),


                //TODO
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                   Row(
                     children: [
                       Text("JOHN",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 22,
                          ),)

                    ,   Container(
                           margin: EdgeInsets.only(left: 5),
                           child: Text("SMITH",style: TextStyle(color: Color(0xff31bfe2),fontWeight: FontWeight.w700,fontSize: 22,),))
                     ],
                   )
                  ],
                ))
              ],
            )

          ),
        ),
      ),
    );
  }
}
