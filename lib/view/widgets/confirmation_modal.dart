import 'package:flutter/material.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/view_model/repository/mal_reports_repository.dart';

class ConfirmationPopUp {
  AlertDialog logOutConfirmationBox(context, auth) {
    return AlertDialog(
      title: const Text("Sign out"),
      content: const Text("Are you sure you want to log out?"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cancel")),
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              auth.signOut();
            },
            child: const Text("Logout"))
      ],
    );
  }

  AlertDialog deleteReport(context, title, text, ref, reportId) {
    return AlertDialog(
      title: Text(
        title,
      ),
      content: Text(text),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Cancel")),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            try {
              ref.read(malReportsRepositoryProvider).deleteMalReport(reportId);
              final successSnackbar = SnackBar(
                backgroundColor: green,
                content: Text(
                  'Deleted Successfully',
                ),
                duration: Duration(seconds: 1),
              );
              ScaffoldMessenger.of(context)
                  .showSnackBar(successSnackbar)
                  .closed
                  .then((data) => {Navigator.pop(context)}); // Naviga
            } catch (e) {
              final failureSnackbar = SnackBar(
                content: Text('Error : $e'),
                backgroundColor: red,
              );
              ScaffoldMessenger.of(context).showSnackBar(failureSnackbar);
            }
          },
          child: const Text("Yes"),
        )
      ],
    );
  }
}
