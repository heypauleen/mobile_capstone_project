import 'package:flutter/material.dart';

class MonitoringActivityLog extends StatefulWidget {
  const MonitoringActivityLog({Key? key}) : super(key: key);

  @override
  _MonitoringActivityLogState createState() => _MonitoringActivityLogState();
}
final Shader linearGradient = LinearGradient(
  colors: <Color>[Color(0xff006C35), Color(0xff4BBE83)],
).createShader(
  Rect.fromLTWH(0.0, 50.0, 00.0, 70.0),
);
class _MonitoringActivityLogState extends State<MonitoringActivityLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget> [
              Icon(
                Icons.notifications_none_outlined,
                color: Color(0xff727272),
                size: 40,
              ),
              SizedBox(width: 10.0),
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2021/01/04/10/41/icon-5887126_960_720.png"),
              )
            ],
          )
      ),
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
                  "Monitoring Activity Log",
                  style: TextStyle(fontSize:27, fontFamily: 'Product Sans', fontWeight: FontWeight.bold,
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
                  padding: const EdgeInsets.fromLTRB(19, 10, 0, 0),
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
                        labelText: "Barangay Health Station",
                        contentPadding: EdgeInsets.all(17)                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical:8),
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
                        labelText: "Municipal/Regional Health Unit",
                        contentPadding: EdgeInsets.all(17)                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(19, 0, 0, 0),
                  child: Text(
                      "Activities",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4BBE83),

                      )
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical:0),
                  //height: 500,
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 5,
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
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(19, 10, 0, 0),
                  child: Text(
                      "Findings/Remarks",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4BBE83),

                      )
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical:0),
                  //height: 500,
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 5,
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
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 30,
                        horizontal: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(19, 10, 0, 0),
                  child: Text(
                      "Conforme",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4BBE83),

                      )
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical:0),
                  //height: 500,
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    minLines: 1,
                    maxLines: 5,
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
                        contentPadding: EdgeInsets.all(17)
                    ),
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
