import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class skill_each_row_with_icon extends StatelessWidget {

  String skilltext;
  skill_each_row_with_icon({
    required this.skilltext
});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: Row(
        children: [
          Icon(
            CupertinoIcons.star_fill,
            size: 15,
          ),
          SizedBox(
            width: 5,
          ),
          Wrap(
            children: [
              Text("Skill1",style: TextStyle(

              ),)],
          )
        ],
      ),
    );
  }
}
