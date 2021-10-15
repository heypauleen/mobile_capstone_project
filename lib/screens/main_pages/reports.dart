import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_capstone_project/screens/reports/coaching_and_monitoring.dart';
import 'package:my_capstone_project/screens/reports/local_health_board_monitoring.dart';
import 'package:my_capstone_project/screens/reports/monitoring_activity_log.dart';

class Reports extends StatelessWidget {
  Reports({Key? key}) : super(key: key);
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xff006C35), Color(0xff4BBE83)],
  ).createShader(
    Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container (
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_home.png'),
                fit: BoxFit.cover,
              )
          ),
          child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [ //add 3 buttons here for the local health board monitoring reports
                  Padding( //Monitoring Activity Log button
                    padding: EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(75, 00),
                        primary: Color(0xffFFFFFF),
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        textStyle: TextStyle(fontSize: 15, fontFamily: 'Product Sans', color: Colors.grey),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget> [
                            Image(
                              image: AssetImage('assets/images/resources_logo.png'),
                              height: 50, width: 50, fit: BoxFit.fitWidth,
                            ),
                            Text (
                              "Monitoring Activity Log",
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Product Sans',
                                  letterSpacing: .7,
                                  fontWeight: FontWeight.bold,
                                  foreground: Paint()..shader = linearGradient
                              ),
                            ),
                          ]
                      ),
                      onPressed: () {
                        Report_OnClick(context, "MAL");
                      },
                    ),
                  ),
                  Padding ( // Coaching and monitoring report
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: (){
                            Report_OnClick(context, "CMR");
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size (75,00),
                              primary: Color(0xffFFFFFF),
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                              textStyle: TextStyle(fontSize: 15, fontFamily: 'Product-Sans'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                              )
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget> [
                                Image(
                                    image: AssetImage('assets/images/coaching_monitoring_logo.png'),
                                  height: 50, width: 50, fit: BoxFit.fitWidth,
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget> [
                                      Text(
                                        "Coaching and Monitoring",
                                        style: TextStyle(fontSize:25, fontFamily: 'Product Sans', fontWeight: FontWeight.bold,
                                            foreground: Paint()..shader = linearGradient),
                                      ),
                                      Text(
                                        "Report",
                                        style: TextStyle(fontSize:25, fontFamily: 'Product Sans', fontWeight: FontWeight.bold,
                                            foreground: Paint()..shader = linearGradient),
                                      ),
                                    ]
                                  ),
                                )
                              ]
                          )
                      )
                  ),
                  Padding ( // Coaching and monitoring report
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: (){
                            Report_OnClick(context, "LHB");
                          },
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size (75,00),
                              primary: Color(0xffFFFFFF),
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                              textStyle: TextStyle(fontSize: 15, fontFamily: 'Product-Sans'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                              )
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget> [
                                Image(
                                  image: AssetImage('assets/images/local_health_logo.png'),
                                  height: 50, width: 50, fit: BoxFit.fitWidth,
                                ),
                                Expanded(
                                  child: Column(
                                      children: <Widget> [
                                        Text(
                                          "Local Health Board",
                                          style: TextStyle(fontSize:25, fontFamily: 'Product Sans', fontWeight: FontWeight.bold,
                                              foreground: Paint()..shader = linearGradient),
                                        ),
                                        Text(
                                          "Monitoring Report",
                                          style: TextStyle(fontSize:25, fontFamily: 'Product Sans', fontWeight: FontWeight.bold,
                                              foreground: Paint()..shader = linearGradient),
                                        ),
                                      ]
                                  ),
                                )
                              ]
                          )
                      )
                  )
                ],
              )
          ),
        )
    );
  }
}

void Report_OnClick(BuildContext context, String reporttype){
  if(reporttype == "MAL")
    Navigator.push(context, MaterialPageRoute(builder: (context) => MonitoringActivityLog()));
  if(reporttype == "CMR")
    Navigator.push(context, MaterialPageRoute(builder: (context) => CoachingAndMonitoring()));
  if(reporttype == "LHB")
    Navigator.push(context, MaterialPageRoute(builder: (context) => LocalHealthBoardMonitoring()));
}