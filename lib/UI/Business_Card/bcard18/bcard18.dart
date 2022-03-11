import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';

class Bcard18 extends StatefulWidget {
  String name;
  String email;
  String mainrole;
  String phone;
  String website;
  String company;
  String address;
  String city;
  String state;
  String pincode;

  Bcard18(
      {Key? key,
      required this.name,
      required this.mainrole,
      required this.email,
      required this.phone,
      required this.website,
      required this.company,
      required this.address,
      required this.city,
      required this.state,
      required this.pincode})
      : super(key: key);

  @override
  State<Bcard18> createState() => _Bcard18State();
}

class _Bcard18State extends State<Bcard18> {
  double h = 0.0, w = 0.0;

  double kh = 1 / 759.2727272727273;

  double kw = 1 / 392.72727272727275;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    h = size.height;
    w = size.width;
    return Scaffold(
        appBar: AppBar(
          title: Text('Hello'),
          actions: [
            TextButton.icon(
                onPressed: () async {
                  final pdfFile = await generate(
                    759.27,
                    392.72,
                    widget.name,
                    widget.email,
                    widget.phone,
                    widget.mainrole,
                    widget.address,
                    widget.city,
                    widget.state,
                    widget.pincode,
                    widget.company,
                  ); //required This generates a file and stores in pdfFile
                  // invoice here represents the values which we have to show

                  PdfApi.openFile(pdfFile);
                },
                icon: Icon(
                  Icons.picture_as_pdf,
                  color: Colors.white,
                ),
                label: Text(
                  'Generate',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 2),
            decoration: BoxDecoration(
              color: Color(0xffF6F6F6),
              border: Border.all(
                color: Colors.black,
                width: 0.1,
              ),
              borderRadius: BorderRadius.circular(30),
              //
            ),
            height: 270 * kh * h,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              widget.name,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 25 * kh * h),
                            ),
                            Text(
                              widget.mainrole,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15 * kh * h),
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 200 * kh * h,
                          margin: EdgeInsets.symmetric(horizontal: 5 * kw * w),
                          width: 2,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 5 * kw * w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  CupertinoIcons.phone,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                Text(
                                  widget.phone,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12 * kh * h),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5 * kh * h,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  color: Colors.black,
                                  size: 15,
                                ),
                                Text(
                                  widget.email,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12 * kh * h),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5 * kh * h,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(MdiIcons.officeBuilding),
                      Text(widget.address)
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
