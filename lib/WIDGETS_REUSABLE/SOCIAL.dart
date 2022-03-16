import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class social_colum extends StatelessWidget {
  Color titlecolor;
  String phone;
  String email;
  String github;
  String linedinn;
  social_colum(
      {required this.phone,
      required this.email,
      required this.github,
      required this.linedinn,
      required this.titlecolor});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "CONTACT",
            style: TextStyle(
                color: titlecolor, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          rowofsocial(
            icon: Icons.phone,
            textof: phone,
          ),
          rowofsocial(
            icon: Icons.email,
            textof: email,
          ),
          rowofsocial(
            icon: MdiIcons.github,
            textof: github,
          ),
          rowofsocial(
            icon: MdiIcons.linkedin,
            textof: linedinn,
          )
        ],
      ),
    );
  }
}

class rowofsocial extends StatelessWidget {
  IconData icon;
  String textof;
  rowofsocial({required this.icon, required this.textof});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          margin: EdgeInsets.only(top: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon),
              SizedBox(
                width: 3,
              ),
              Wrap(
                children: [Text(textof)],
              )
            ],
          ),
        )
      ],
    );
  }
}
