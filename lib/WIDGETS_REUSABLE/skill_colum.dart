import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_resume/WIDGETS_REUSABLE/skill_row_icon_text.dart';


class Skillcolum extends StatelessWidget {

  String skill1;
  String skill2;
  String skill3;

  Skillcolum({
    required this.skill1,
    required this.skill2,
    required this.skill3,

});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        skill_each_row_with_icon(
          skilltext: skill1,

        ),
        skill_each_row_with_icon(
          skilltext: skill2,

        ),
        skill_each_row_with_icon(
          skilltext: skill3,

        ),

      ],
    );
  }
}
