import 'package:flutter/material.dart';
import 'package:my_capstone_project/screens/authenticate/authenticate.dart';
import 'package:my_capstone_project/screens/main_pages/tab_bar.dart';

class Wrapper extends StatelessWidget {
      const Wrapper({Key? key}) : super(key: key);

      @override
      Widget build(BuildContext context) {

        //return either Home or Authenticate widget
        return Authenticate();
      }
    }
