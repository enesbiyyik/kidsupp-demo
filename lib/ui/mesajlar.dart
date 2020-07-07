import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mesajlar extends StatefulWidget {
  Mesajlar(Key k) : super(key: k);

  @override
  _MesajlarState createState() => _MesajlarState();
}

class _MesajlarState extends State<Mesajlar> {
  Color learch = Color.fromARGB(255, 204, 170, 255);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      alignment: Alignment.center,
      child: Center(
        child: Text("Analizler Çok Yakında Sizlerle", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),),
      ),
    );
  }
}
