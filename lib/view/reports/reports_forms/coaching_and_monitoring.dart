import 'package:flutter/material.dart';

class CoachingAndMonitoring extends StatefulWidget {
  const CoachingAndMonitoring({Key? key}) : super(key: key);

  @override
  _MonitoringActivityLogState createState() => _MonitoringActivityLogState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color(0xff006C35), Color(0xff4BBE83)],
).createShader(
  Rect.fromLTWH(0.0, 50.0, 00.0, 70.0),
);
class _MonitoringActivityLogState extends State<CoachingAndMonitoring> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:AssetImage('assets/images/bg_home.png'),
                  fit: BoxFit.fill
              )
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column (
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget> [
                  Text(
                    "Coaching and Monitoring Report",
                    style: TextStyle(fontSize:24, fontFamily: 'Product Sans', fontWeight: FontWeight.bold,
                        foreground: Paint()..shader = linearGradient),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 10, 0, 0),
                    child: Text(
                        "Date",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4BBE83),

                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical:0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(color: Color(0xff4BBE83)
                          ),
                          contentPadding: EdgeInsets.all(17)                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 6, 0, 0),
                    child: Text(
                        "Area Monitored",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4BBE83),

                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical:0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(color: Color(0xff4BBE83)
                          ),
                          contentPadding: EdgeInsets.all(17)                    ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 6, 0, 0),
                    child: Text(
                        "Type of Coaching",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4BBE83),

                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical:0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(color: Color(0xff4BBE83)
                          ),
                          contentPadding: EdgeInsets.all(17)                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 6, 0, 0),
                    child: Text(
                        "Name of Coachee/s",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4BBE83),

                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical:0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(color: Color(0xff4BBE83)
                          ),
                          contentPadding: EdgeInsets.all(17)                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 6, 0, 0),
                    child: Text(
                        "Agenda/Issues Discussed",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4BBE83),

                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical:0),
                    child: TextFormField(
                      minLines: 1,
                      maxLines: 5,  // allow user to enter 5 line in textfield
                      keyboardType: TextInputType.multiline,  // user keyboard will have a button to move cursor to next line
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(color: Color(0xff4BBE83)
                          ),
                          contentPadding: EdgeInsets.all(17)                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 6, 0, 0),
                    child: Text(
                        "Agreement/Next Step",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4BBE83),

                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical:0),
                    child: TextFormField(
                      minLines: 1,
                      maxLines: 5,  // allow user to enter 5 line in textfield
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(color: Color(0xff4BBE83)
                          ),
                          contentPadding: EdgeInsets.all(17)                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 6, 0, 0),
                    child: Text(
                        "Target Date of Implementation",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4BBE83),

                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical:0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(color: Color(0xff4BBE83)
                          ),
                          contentPadding: EdgeInsets.all(17)                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 6, 0, 0),
                    child: Text(
                        "Conforme",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4BBE83),

                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical:0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(color: Color(0xff4BBE83)
                          ),
                          contentPadding: EdgeInsets.all(17)                    ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(19, 6, 0, 0),
                    child: Text(
                        "Status",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4BBE83),

                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical:0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          focusColor: Color(0xff4BBE83),
                          fillColor: Colors.white,
                          filled: true,
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffA8CDBA), width: 2.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelStyle: TextStyle(color: Color(0xff4BBE83)
                          ),
                          contentPadding: EdgeInsets.all(17)                    ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical:30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize:14),
                        primary: Color(0xff4BBE83),
                        fixedSize:Size(0, 50),
                      ),
                      onPressed: () {
                      },
                      child: const Text ('DONE'),

                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
