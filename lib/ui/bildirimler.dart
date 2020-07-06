import 'package:flutter/material.dart';

class Bildirimler extends StatefulWidget {
  Bildirimler(Key k) : super(key: k);

  @override
  _BildirimlerState createState() => _BildirimlerState();
}

class _BildirimlerState extends State<Bildirimler> {
  Color learch = Color.fromARGB(255, 204, 170, 255);
  int sayac = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        itemExtent: MediaQuery.of(context).size.height/7,
        itemBuilder: (context, index) => _bildirimListesiOlustur(index));
  }

  _bildirimListesiOlustur(index) {
    sayac++;
    return SafeArea(
      child: Dismissible(
        key: Key(sayac.toString()),
        direction: DismissDirection.startToEnd,
        onDismissed: (direction){
          setState(() {

          });
        },
        child: Container(
          margin: EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width - 40,
          decoration: BoxDecoration(
            border: Border.all(color: learch),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Material(
            elevation: 4,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Icon(Icons.person, size: 60,),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    flex: 10,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
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
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      height: double.infinity,
                      child: FlatButton(
                        onPressed: () {},
                        child: Center(child: Icon(Icons.check, size: 25, color: Colors.white,)),
                        color: Colors.green,
                        splashColor: Colors.greenAccent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
