import 'package:flutter/material.dart';
import 'package:my_capstone_project/utilities/dialogs/generic_dialogs.dart';

Future<bool> showDeleteDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: "Delete",
    content: "Are you sure you want to delete thisitem?",
    optionsBuilder: () => {
      'Cancel' : false,
      'Yes' : true,
    }).then((value) => value ?? false,
  );
}
