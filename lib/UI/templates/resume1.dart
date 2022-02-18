

import 'package:flutter/material.dart';
class Resume1_page extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(10),
            //   border: Border.all(
            //
            //     width: 1
            //   )
            // ),
            child: Container(
          
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: Colors.grey,
                      width: 1
                  )
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Container(
                       padding: EdgeInsets.only(left: 10,right: 5,bottom: 30,top: 30),

                       width: 175,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),topLeft:  Radius.circular(50)),
                            color: Colors.grey[300],
                          ),

                       child:  Container(
                         padding: EdgeInsets.symmetric(horizontal: 15),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             CircleAvatar(
                               radius: 60,
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             Text("PROFILE",style: TextStyle(color:Color(0xff169db3) ,fontSize: 15,fontWeight: FontWeight.bold),
                             
                             ),
                             SizedBox(
                               height: 10,
                             ),
                             Wrap(
                               children: [
                                 Text("The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop")
                               ],
                             ),

                             SizedBox(
                               height: 10,
                             ),
                             Text("CONTACT",style: TextStyle(color:Color(0xff169db3) ,fontSize: 15,fontWeight: FontWeight.bold),

                             ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("PHONE-\n1234567890"),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("EMAIL-\nsaipichad7@gmail.com")
                              ],
                            ),
                             SizedBox(
                               height: 10,
                             ),
                             Text("HOBBIES",style: TextStyle(color:Color(0xff169db3) ,fontSize: 15,fontWeight: FontWeight.bold),

                             ),
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,

                               children: [
                                 Text("1Java"),
                                 SizedBox(
                                   height: 10,
                                 ),
                                 Text("1Java"),
                                 Text("1Java"),
                                 SizedBox(
                                   height: 10,
                                 ),
                                 Text("1Java"),
                                 Text("1Java"),
                                 SizedBox(
                                   height: 10,
                                 ),
                                 Text("1Java"),

                               ],
                             ),
                             SizedBox(
                               height: 50,
                             )

                           ],
                         ),
                       ),
                     ),
                      SizedBox(
                        width: 10,
                      ),

                      Expanded(child:Container(

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                          color: Colors.grey[200],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                           Wrap(
                             children: [
                               Text("SAINATH PICHAD",style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 28,
                                   fontWeight: FontWeight.bold
                               ),)
                             ],
                           ),
                            Text("FLUTTER DEVELOPER"),
                            SizedBox(
                              height: 15,
                            ),
                            Text("EDUCATION",style: TextStyle(color:Colors.black ,fontSize: 15,fontWeight: FontWeight.bold),

                            ),
                            Divider(
                             color:Color(0xff169db3) ,
                            ),
                           Wrap(
                             children: [
                               Text("[School Name]",style: TextStyle(
                                   color: Colors.black
                               ),


                               )

                             ],
                           ),
                            Text("2017-2021"),
                            Text("8.68 GPA")



,
                          SizedBox(
                          height: 15,
                        ),



                            Text("WORK EXPERIENCE",style: TextStyle(color:Colors.black ,fontSize: 15,fontWeight: FontWeight.bold),

                            ),
                            Divider(
                              color:Color(0xff169db3) ,
                            ),
                            Wrap(
                              children: [
                                Text("[Company Name]",style: TextStyle(
                                    color: Colors.black
                                ),


                                )

                              ],
                            ),
                            Text("2017-2021"),
                            Text("UI Designer")


,
                            SizedBox(
                              height: 15,
                            ),



                            Text("SKILLS",style: TextStyle(color:Colors.black ,fontSize: 15,fontWeight: FontWeight.bold),

                            ),
                            Divider(
                              color:Color(0xff169db3) ,
                            ),
                          Text("SKILL1"),Text("SKILL1"),Text("SKILL1"),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 10,
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
