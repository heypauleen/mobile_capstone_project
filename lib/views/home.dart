import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart' as cal;

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff006C35), Color(0xff4BBE83)],
  ).createShader(
    Rect.fromLTWH(0.0, 70.0, 0.0, 200.0),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg_home.png'),
                fit: BoxFit.cover
            )
        ),
        child: SafeArea(
          child: Column ( //6 rows to be inserted here
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget> [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Row (//First Row
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Icon (
                      Icons.calendar_today,
                      color: Color(0xffa8a8a8),
                      size: 20,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      "Monday, March 01, 2022",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Product Sans",
                          color: Color(0xff787878)
                      ),
                    ),
                  ],
                ),
              ),
              Padding( //Second Row
                padding: const EdgeInsets.fromLTRB(15, 20, 15, 25),
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
                      child: ElevatedButton (
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent,
                          primary: Color(0x00000000),
                          textStyle: const TextStyle(fontSize: 30),
                        ),
                        onPressed: () {
                          //Logging of attendance should be inserted here.
                        },
                        child: Column( //2 rows in a column for the Log Attendance text and location
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget> [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 20, 0, 2),
                              child: Text(
                                "LOG ATTENDANCE",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Product Sans",
                                    letterSpacing: 2.0,
                                ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                              child: Text(
                                "(Current Location)",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Product Sans",
                                    fontSize: 20,
                                    letterSpacing: 1.5,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(110,100),
                      primary: Color(0xffffffff),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                      textStyle: TextStyle(fontSize: 15, fontFamily: "Product Sans", color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: <Widget> [
                        Image(image: AssetImage('assets/images/reports_logo.png'), height: 50, width: 50, fit: BoxFit.fitWidth,),
                        Text("Reports", style: TextStyle(fontSize: 15, fontFamily: "Product Sans", color: Colors.grey)),
                      ],
                    ),
                    onPressed: () {

                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(110,100),
                      primary: Color(0xffffffff),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                      textStyle: TextStyle(fontSize: 15, fontFamily: "Product Sans", color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: <Widget> [
                        Image(image: AssetImage('assets/images/resources_logo.png'), height: 50, width: 50, fit: BoxFit.fitWidth,),
                        Text("Resources", style: TextStyle(fontSize: 15, fontFamily: "Product Sans", color: Colors.grey)),
                      ],
                    ),
                    onPressed: () {

                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(110,100),
                      primary: Color(0xffffffff),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                      textStyle: TextStyle(fontSize: 15, fontFamily: "Product Sans", color: Colors.grey),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: <Widget> [
                        Image(image: AssetImage('assets/images/survery_logo.png'), height: 50, width: 50, fit: BoxFit.fitWidth,),
                        Text("Survey", style: TextStyle(fontSize: 15, fontFamily: "Product Sans", color: Colors.grey)),
                      ],
                    ),
                    onPressed: () {

                    },
                  ),
                ],
              ),
              Padding( //FourthRow
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Center(
                  child: Text (
                    "ZSP PDOHO CALENDAR",
                    style: TextStyle(fontSize:25, fontFamily: 'Product Sans', fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient),
                  ),
                )

                // Image(
                //   height: 50,
                //   image: AssetImage("assets/images/zsppdohoupdates_text.png"),
                // )
              ),
              Flexible(
                child: Padding( //FifthRow
                  padding: const EdgeInsets.all(8.0),
                    child: cal.SfCalendar(
                      view: cal.CalendarView.month,
                      todayHighlightColor: Color(0xff4BBE83),
                    ),
                )
              )
            ],
          ),
        )
      );
  }
}
