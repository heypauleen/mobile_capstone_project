import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_capstone_project/constants/fonts.dart';
import 'package:my_capstone_project/constants/style.dart';
import 'package:my_capstone_project/view/widgets/calendar.dart';
import 'package:my_capstone_project/view/widgets/gradient_text.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        //6 rows to be inserted here
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Row(
              //First Row
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.calendar_today,
                  color: Color(0xffa8a8a8),
                  size: 20,
                ),
                SizedBox(width: 10.0),
                StreamBuilder<Object>(
                    stream: Stream.periodic(const Duration(seconds: 1),
                        (count) => Duration(seconds: count)),
                    builder: (context, snapshot) {
                      return Text(
                        DateFormat('MMMM d, y (EEE) hh:mm aaa')
                            .format(DateTime.now()),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Product Sans",
                            color: Color(0xff787878)),
                      );
                    })
              ],
            ),
          ),
          Padding(
            //Second Row
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xff4BBE83),
                    Color(0xFF84E3AD),
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shadowColor: Colors.transparent,
                  primary: Color(0x00000000),
                  textStyle: const TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  //Logging of attendance should be inserted here.
                },
                child: Column(
                  //2 rows in a column for the Log Attendance text and location
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 2),
                      child: Text(
                        "LOG ATTENDANCE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: fontFamily,
                          letterSpacing: 2.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Text(
                        "(Current Location)",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: fontFamily,
                          fontSize: 20,
                          color: Color.fromARGB(255, 255, 255, 255),
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(110, 100),
                  primary: Color(0xffffffff),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontFamily: "Product Sans",
                      color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/reports_logo.png'),
                      height: 50,
                      width: 50,
                      fit: BoxFit.fitWidth,
                    ),
                    Text("Reports",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Product Sans",
                            color: Colors.grey)),
                  ],
                ),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(110, 100),
                  primary: Color(0xffffffff),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontFamily: "Product Sans",
                      color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/resources_logo.png'),
                      height: 50,
                      width: 50,
                      fit: BoxFit.fitWidth,
                    ),
                    Text("Resources",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Product Sans",
                            color: Colors.grey)),
                  ],
                ),
                onPressed: () {},
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(110, 100),
                  primary: Color(0xffffffff),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  textStyle: TextStyle(
                      fontSize: 15,
                      fontFamily: "Product Sans",
                      color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('assets/images/survery_logo.png'),
                      height: 50,
                      width: 50,
                      fit: BoxFit.fitWidth,
                    ),
                    Text("Survey",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: "Product Sans",
                            color: Colors.grey)),
                  ],
                ),
                onPressed: () {},
              ),
            ],
          ),
          Padding(
            //FourthRow
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Center(
                child: MyGradientHeaderText(
              text: "ZSP PDOHO UPDATES",
              fontSize: 20,
            )),
          ),
          MyCalendar(),
        ],
      )),
    );
  }
}
