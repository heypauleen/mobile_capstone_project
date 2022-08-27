import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/constants/enums/menu_action.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/view/widgets/confirmation_modal.dart';
import 'package:my_capstone_project/view_model/bottomnavibar_notifier.dart';
import 'package:my_capstone_project/view_model/reports_transition_notifier.dart';
import 'package:my_capstone_project/view_model/services/auth_services.dart';

AppBar appBar(BuildContext context, WidgetRef ref) {
  final _auth = ref.watch(authenticationServicesProvider);

  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    automaticallyImplyLeading: true,
    actions: [
      TextButton(
        onPressed: () {},
        child: Icon(
          Icons.notifications_none_outlined,
          color: Color(0xff727272),
          size: 30,
        ),
      ),
      PopupMenuButton<MenuAction>(
        icon: CircleAvatar(
          radius: 20,
          backgroundImage: NetworkImage(
              "https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_960_720.png"),
        ),
        onSelected: (value) async {
          switch (value) {
            case MenuAction.logout:
              showDialog<bool>(
                context: context,
                builder: (context) {
                  return ConfirmationPopUp()
                      .logOutConfirmationBox(context, _auth);
                },
              );
              break;
            default:
              break;
          }
        },
        itemBuilder: (context) {
          return const [
            PopupMenuItem<MenuAction>(
                value: MenuAction.logout, child: Text('Logout')),
          ];
        },
      )
    ],
  );
}
