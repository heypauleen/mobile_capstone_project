import 'package:flutter/material.dart';
import 'package:my_capstone_project/utilities/dialogs/generic_dialogs.dart';

Future<bool> showLogOutDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Log out',
    content: "Are you sure you want to log out?",
    optionsBuilder: () => {
      'Cancel' : false,
      'Logout' : true,
    },
  ).then((value) => value ?? false); //get value of 'value' if not null, if null, return false
}
