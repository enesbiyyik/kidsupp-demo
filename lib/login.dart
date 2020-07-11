import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidsupp/main.dart';

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: MediaQuery.of(context).size.width - 15,
                    child: FlatButton(
                      onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage())),
                      color: Colors.pink,
                      child: Text(
                        "Hemen Başla",
                        style: TextStyle(fontSize: 36, color: Colors.white, fontFamily: 'Child'),
                        textAlign: TextAlign.left,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(300)),
                      ),
                      splashColor: Colors.red,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: MediaQuery.of(context).size.width - 50,
                    height: MediaQuery.of(context).size.width - 15,
                    child: FlatButton(
                      onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage())),
                      color: Colors.blue,
                      child: Text(
                        "Kayıt Ol",
                        style: TextStyle(fontSize: 36, color: Colors.white, fontFamily: 'Child'),
                        textAlign: TextAlign.right,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(300)),
                      ),
                      splashColor: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: (MediaQuery.of(context).size.width/2)-100,
              top: (MediaQuery.of(context).size.height/2)-120,
              child: SvgPicture.asset("assets/hippo.svg"),
            ),
          ],
        ),
      ),
    );
  }
}
