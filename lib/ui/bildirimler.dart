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
                SizedBox(width: 10,),
                Expanded(
                  flex: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("En Yeni Bildirim $index", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                        SizedBox(height: 5,),
                        Text("Kısa detayı $index", style: TextStyle(fontSize: 18, color: Colors.grey),),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    height: double.infinity,
                    child: IconButton(
                      onPressed: () {},
                      color: Colors.green,
                      splashColor: Colors.greenAccent,
                      icon: Icon(Icons.search),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
