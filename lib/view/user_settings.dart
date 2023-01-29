import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/view/widgets/gradient_text.dart';
import 'package:my_capstone_project/view/widgets/user_settings_field.dart';

class UserSettings extends ConsumerStatefulWidget {
  const UserSettings({Key? key}) : super(key: key);

  @override
  UserSettingsState createState() => UserSettingsState();
}

class UserSettingsState extends ConsumerState<UserSettings> {
  late final TextEditingController _username,
      _firstname,
      _lastname,
      _email,
      _position,
      _contactno;

  @override
  void initState() {
    _username = TextEditingController();
    _firstname = TextEditingController();
    _lastname = TextEditingController();
    _email = TextEditingController();
    _position = TextEditingController();
    _contactno = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _username.dispose();
    _firstname.dispose();
    _lastname.dispose();
    _email.dispose();
    _position.dispose();
    _contactno.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/bg_home.png'),
            )),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MyGradientHeaderText(
                      text: "User Settings",
                      fontSize: 23,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 10),
                      child: Center(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_960_720.png'),
                          radius: 65,
                        ),
                      ),
                    ),
                    Center(
                      child: GestureDetector(
                        child: Text(
                          "EDIT PROFILE PICTURE",
                          style: TextStyle(
                              fontSize: 8,
                              color: lightGray,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MyUserSettingsTextfield(
                      labelTitle: "Username: ",
                      hintText: "Username",
                      controller: _username,
                    ),
                    MyUserSettingsTextfield(
                      labelTitle: "Firstname: ",
                      hintText: "Firstname",
                      controller: _firstname,
                    ),
                    MyUserSettingsTextfield(
                      labelTitle: "Lastname: ",
                      hintText: "Lastname",
                      controller: _lastname,
                    ),
                    MyUserSettingsTextfield(
                      labelTitle: "Email: ",
                      hintText: "Email",
                      controller: _email,
                    ),
                    MyUserSettingsTextfield(
                      labelTitle: "Position: ",
                      hintText: "Position",
                      controller: _position,
                    ),
                    MyUserSettingsTextfield(
                      labelTitle: "Contact No: ",
                      hintText: "Contact No.",
                      controller: _position,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: GestureDetector(
                        child: Text(
                          "CHANGE PASSWORD",
                          style: TextStyle(
                              fontSize: 12,
                              color: lightGray,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 14),
                          primary: green,
                          fixedSize: Size(0, 40),
                        ),
                        onPressed: () {},
                        child: Text('SAVE DETAILS',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            )

            // child: SafeArea(
            //   child: SingleChildScrollView(
            //       child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.stretch,
            //     children: [
            //       //Text("Username: "),
            //     ],
            //   )),
            // ),
            ));
  }
}
