import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/view/widgets/textfield_title.dart';
import 'package:my_capstone_project/view/widgets/textformfield_decoration.dart';

class MyUserSettingsTextfield extends StatelessWidget {
  final String labelTitle;
  final String hintText;
  final TextEditingController controller;

  const MyUserSettingsTextfield(
      {super.key,
      this.labelTitle = "",
      this.hintText = "",
      required this.controller});
  //const MyUserSettingsTextfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 10,
          ),
          Container(
            height: 37,
            width: 120,
            child: Expanded(
              flex: 4,
              child: MyTextFieldTitle(
                text: labelTitle,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              height: 37,
              child: TextFormField(
                  decoration: InputDecoration(
                focusColor: green,
                fillColor: Colors.white,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: green, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: borderColor, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: borderColor, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelStyle: TextStyle(color: green),
                contentPadding: EdgeInsets.symmetric(horizontal: 15),
              )),
            ),
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
    );
  }
}
