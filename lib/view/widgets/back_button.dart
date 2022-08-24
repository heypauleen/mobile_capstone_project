import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  // final dynamic page;

  // const BackButton({super.key, this.page});
  const MyBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
          child: const Text(
            '< Back',
            style: TextStyle(
                fontSize: 14, color: Color.fromARGB(255, 57, 166, 133)),
          ),
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
