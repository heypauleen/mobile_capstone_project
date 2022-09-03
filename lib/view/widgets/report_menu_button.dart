import 'package:flutter/material.dart';
import 'package:my_capstone_project/constants/style.dart' as gradient;
import 'package:my_capstone_project/view/widgets/gradient_text.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ReportMenuButton extends StatelessWidget {
  ReportMenuButton(
      {super.key, this.text = "", this.imageAsset = "", this.pageRoute = ""});

  final String text;
  final String imageAsset;
  final dynamic pageRoute;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(75, 00),
            primary: Color(0xffFFFFFF),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            textStyle: TextStyle(
                fontSize: 15, fontFamily: 'Product Sans', color: Colors.grey),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image(
                image: AssetImage(imageAsset),
                height: 50,
                width: 50,
                fit: BoxFit.fitWidth,
              ),
              Expanded(
                child: Center(
                  child: MyGradientHeaderText(text: text, fontSize: 25),
                ),
              ),
            ],
          ),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => pageRoute))),
    );
  }
}
