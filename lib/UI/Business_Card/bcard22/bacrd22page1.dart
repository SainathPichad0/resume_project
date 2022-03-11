import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'pdf_api.dart';
import 'pdf_ui.dart';

class Bcard22page extends StatefulWidget {
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

  Bcard22page(
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
  _Bcard22pageState createState() => _Bcard22pageState();
}

class _Bcard22pageState extends State<Bcard22page> {
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
          height: 200 * kh * h,
          width: w,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey, width: 0.1)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                                fontSize: 25 * kh * h,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.mainrole,
                            style: TextStyle(
                                fontSize: 17 * kh * h, color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        rowofsocial(
                            color: Colors.yellow,
                            iconData: Icons.phone,
                            val: widget.phone),
                        rowofsocial(
                            color: Colors.red,
                            iconData: Icons.email,
                            val: widget.email),
                        rowofsocial(
                            color: Colors.yellow,
                            iconData: Icons.phone,
                            val: widget.phone),
                        rowofsocial(
                            color: Colors.blue,
                            iconData: MdiIcons.earth,
                            val: widget.website),
                        rowofsocial(
                            color: Colors.purple,
                            iconData: MdiIcons.officeBuildingCog,
                            val: widget.company),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 10 * kh * h,
                ),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Color(0xff17567c),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(300 * kh * h),
                          ),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class rowofsocial extends StatelessWidget {
  final String val;
  final Color color;
  IconData iconData;
  rowofsocial({required this.color, required this.iconData, required this.val});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            iconData,
            color: color,
            size: 18,
          ),
          SizedBox(
            width: 10,
          ),
          Text(val)
        ],
      ),
    );
  }
}
