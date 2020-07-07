import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math' as math;

import 'package:kidsupp/main.dart';

class CikBakalim extends StatefulWidget {
  @override
  _CikBakalimState createState() => _CikBakalimState();
}

class _CikBakalimState extends State<CikBakalim> {
  int a, b, carpim;
  int gelen;
  String mesaj = "";

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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Cevap",
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (deger)=> gelen = int.parse(deger),
                    onSaved: (deger)=> gelen = int.parse(deger),
                  ),
                ),
                RaisedButton(
                  child: Text("Kontrol Et"),
                  onPressed: (){
                    carpim = a*b;
                    if(gelen == carpim){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage()));
                    }else{
                      setState(() {
                        mesaj = "Yanlış oldu tekrar deneyin";
                      });
                    }
                  },
                ),
                Text(mesaj),
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