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
    return ListView.builder(
      itemExtent: 100,
        itemBuilder: (context, index) {
          return SafeArea(
            child: Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width-40,
              decoration: BoxDecoration(
                border: Border.all(color: learch),
                borderRadius: BorderRadius.circular(10),
              ),
              child: GestureDetector(
                onTap: (){
                  debugPrint("tıkladım $index");
                },
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.person, size: 60,),
                        SizedBox(width: 15,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          width: MediaQuery.of(context).size.width-175,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Kişi $index", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                              SizedBox(height: 5,),
                              Text("Kişi $index", style: TextStyle(fontSize: 18, color: Colors.grey),),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.delete, size: 36, color: Colors.red,),
                          onPressed: (){},
                          splashColor: Colors.red.shade200,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
