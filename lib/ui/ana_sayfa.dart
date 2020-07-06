import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class AnaSayfa extends StatefulWidget {
  AnaSayfa(Key k) : super(key: k);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  String profile = 'https://avatars3.githubusercontent.com/u/54243479?s=460&u=4f0e74929cb7272deeb0661ace23b87081688da5&v=4';
  String kullaniciAd = 'Enes Bıyyık';
  String okulAd = 'Kabataş Erkek Lisesi';
  int kullaniciYas = 17;

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: [
        personInfo(context),
      ],
    );
  }

  Container personInfo(BuildContext context) {
    return Container(
        height: 250,
        width: MediaQuery.of(context).size.width-40,
        margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
          elevation: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    color: Colors.blue,
                    image: profileImage(profile),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20,10,10,0),
                  alignment: Alignment.centerLeft,
                  color: Colors.white,
                  width: double.infinity,
                  child: isimVeYas(kullaniciAd, kullaniciYas),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.fromLTRB(20,0,10,0),
                  alignment: Alignment.topLeft,
                  color: Colors.white,
                  width: double.infinity,
                  child: okulAdi(okulAd),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(15),
                          height: double.infinity,
                          child: FlatButton(
                            onPressed: (){},
                            child: Icon(Icons.close, size: 40, color: Colors.white,),
                            color: Colors.red,
                            splashColor: Colors.red.shade900,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(15),
                          height: double.infinity,
                          child: FlatButton(
                            onPressed: (){},
                            child: Icon(Icons.check, size: 40, color: Colors.white,),
                            color: Colors.green,
                            splashColor: Colors.greenAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }

  Text okulAdi(String okul) {
    return Text(okul, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),);
  }

  Text isimVeYas(String ad, int yas) {
    return Text(ad+", "+yas.toString(), style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),);
  }

  DecorationImage profileImage(profilFotoUrl) {
    return DecorationImage(
      fit: BoxFit.cover,
      image: NetworkImage(profilFotoUrl),
    );
  }
}
