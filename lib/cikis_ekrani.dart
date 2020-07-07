import 'package:flutter/material.dart';
import 'dart:math' as math;

class CikBakalim extends StatefulWidget {
  @override
  _CikBakalimState createState() => _CikBakalimState();
}

class _CikBakalimState extends State<CikBakalim> {
  int a, b;

  @override
  void initState() {
    randomSayiOlusturucu();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(a.toString()+'x'+b.toString()+'= ?', style: TextStyle(fontSize: 48, fontWeight: FontWeight.w600),),
                TextFormField(
                  
                ),
              ],
              ),
          ),
        ),
      ),
    );
  }
  randomSayiOlusturucu(){
    var random = math.Random();
    a = random.nextInt(10);
    b = random.nextInt(10);
  }
}