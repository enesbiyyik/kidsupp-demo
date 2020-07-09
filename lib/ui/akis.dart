import 'package:flutter/material.dart';

//TODO: Burası verilen programlara göre özelleştirilecek.


class MufredatBody extends StatefulWidget {
  @override
  _MufredatBodyState createState() => _MufredatBodyState();
}

class _MufredatBodyState extends State<MufredatBody> {
  bool inAppPurchase = true;
  bool hata = false;
  int _aktifStep = 0;
  String donut1, donut2, donut3;
  List<Step> tumStepler;

  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();
  var key3 = GlobalKey<FormFieldState>();
  var key4 = GlobalKey<FormFieldState>();
  var key5 = GlobalKey<FormFieldState>();

  bool checkBox = false;
  bool checkBox2 = false;
  bool checkBox3 = false;

  @override
  Widget build(BuildContext context) {

    tumStepler = _tumStepler();
    if(inAppPurchase == true){
      return ListView(
        children: [
          Stepper(
            physics: ScrollPhysics(),
            controlsBuilder: (BuildContext context, {VoidCallback onStepContinue, VoidCallback onStepCancel}){
              return Row(
                children: <Widget>[
                  SizedBox(width: 60,),
                  RaisedButton(
                    color: Colors.blue,
                    onPressed: onStepContinue,
                    child: _aktifStep == tumStepler.length-1 ? const Text("Bitir", style: TextStyle(color: Colors.white)): const Text("Devam", style: TextStyle(color: Colors.white),),
                  ),
                  SizedBox(width: 30,),
                  RaisedButton(
                    color: Colors.red,
                    onPressed: onStepCancel,
                    child: Text("Geri", style: TextStyle(color: Colors.white),),
                  ),
                ],
              );
            },
            steps: tumStepler,
            currentStep: _aktifStep,
            onStepContinue: () {
              setState(() {
                _ileriButonuKontrol();
              });
            },
            onStepCancel: () {
              setState(() {
                if (_aktifStep > 0) _aktifStep--;
              });
            },
          ),
        ],
      );
    }else{
      return Container(
        alignment: Alignment.center,
        child: Text("Buraya Erişmek İçin Premium Olun."),
      );
    }
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
        title: Text("ADIM 1", style: TextStyle(fontSize: 24),),
        state: _stateleriAyarla(0),
        isActive: true,
        content: CheckboxListTile(value: checkBox, onChanged: (a){
          setState(() {
            checkBox = a;
          });},
          title: Text("Konu 1"),
          subtitle: Text("Konu Detay"),
          key: key0,
          activeColor: Colors.blue,
        ),
      ),
      Step(
        title: Text("KONU B", style: TextStyle(fontSize: 24),),
        subtitle: Text("TEMEL B KAVRAMLARI", style: TextStyle(fontSize: 16),),
        state: _stateleriAyarla(1),
        isActive: true,
        content: TextFormField(
          maxLines: 10,
          key: key1,
          decoration: InputDecoration(
              hintText: "150 Karakterlik Açıklama",
              labelText: "Açıklama Yazısı",
              border: OutlineInputBorder()
          ),
          validator: (girilenDeger) {
            if (girilenDeger.length < 150)
              return "En az 150 karakter giriniz";
            else
              return null;
          },
          onSaved: (girilendeger){
            donut1 = girilendeger;
          },
        ),
      ),
      Step(
        title: Text("ADIM 2", style: TextStyle(fontSize: 24),),
        state: _stateleriAyarla(2),
        isActive: true,
        content: CheckboxListTile(value: checkBox2, onChanged: (a){
          setState(() {
            checkBox2 = a;
          });},
          title: Text("Konu 2"),
          subtitle: Text("Konu Detay"),
          key: key2,
          activeColor: Colors.blue,
        ),
      ),
      Step(
        title: Text("KONU C", style: TextStyle(fontSize: 24),),
        subtitle: Text("TEMEL C KAVRAMLARI", style: TextStyle(fontSize: 16),),
        state: _stateleriAyarla(3),
        isActive: true,
        content: TextFormField(
          maxLines: 10,
          key: key3,
          decoration: InputDecoration(
              hintText: "150 Karakterlik Açıklama",
              labelText: "Açıklama Yazısı",
              border: OutlineInputBorder()
          ),
          validator: (girilenDeger) {
            if (girilenDeger.length < 150)
              return "En az 150 karakter giriniz";
            else
              return null;
          },
          onSaved: (girilendeger){
            donut2 = girilendeger;
          },
        ),
      ),
      Step(
        title: Text("ADIM 3", style: TextStyle(fontSize: 24),),
        state: _stateleriAyarla(4),
        isActive: true,
        content: CheckboxListTile(value: checkBox3, onChanged: (a){
          setState(() {
            checkBox3 = a;
          });},
          title: Text("Konu 3"),
          subtitle: Text("Konu Detay"),
          key: key4,
          activeColor: Colors.blue,
        ),
      ),
      Step(
        title: Text("KONU D", style: TextStyle(fontSize: 24),),
        subtitle: Text("TEMEL D KAVRAMLARI", style: TextStyle(fontSize: 16),),
        state: _stateleriAyarla(5),
        isActive: true,
        content: TextFormField(
          maxLines: 10,
          key: key5,
          decoration: InputDecoration(
              hintText: "150 Karakterlik Açıklama",
              labelText: "Açıklama Yazısı",
              border: OutlineInputBorder()
          ),
          validator: (girilenDeger) {
            if (girilenDeger.length < 150) return "En az 150 karakter giriniz";
            else return null;
          },
          onSaved: (girilendeger){ donut3 = girilendeger;},
        ),
      ),
    ];
    return stepler;
  }

  StepState _stateleriAyarla(int oankiStep) {
    if(oankiStep == _aktifStep){
      if(hata){
        return StepState.error;
      }else{
        return StepState.editing;
      }
    }else{
      return StepState.complete;
    }
  }

  void _ileriButonuKontrol() {
    switch(_aktifStep){
      case 0:
        if(checkBox == true){
          hata = false;
          _aktifStep++;
        }else
          hata = true;
        break;

      case 1:
        if(key1.currentState.validate()){
          key1.currentState.save();
          hata = false;
          _aktifStep++;
        }else{
          hata = true;
        }
        break;

      case 2:
        if(checkBox2 == true){
          hata = false;
          _aktifStep++;
        }else
          hata = true;
        break;

      case 3:
        if(key3.currentState.validate()){
          key1.currentState.save();
          hata = false;
          _aktifStep++;
        }else{
          hata = true;
        }
        break;

      case 4:
        if(checkBox3 == true){
          hata = false;
          _aktifStep++;
        }else
          hata = true;
        break;

      case 5:
        if(key5.currentState.validate()){
          key1.currentState.save();
          hata = false;
          alertDialogOlustur(context);
        }else{
          hata = true;
        }
        break;

    }
  }

  void formTamamlandi() {}

  void alertDialogOlustur(BuildContext ctx) {
    showDialog(
        context: ctx,
        barrierDismissible: true,
        builder: (ctx){
          return AlertDialog(
            title: Text("Tebrikler bu dersi başarı ile tamamladınız!"),
            actions: <Widget>[
              FlatButton(onPressed: (){

              },
                child: Text("Sertifikayı Görüntüle", style: TextStyle(color: Colors.white),),
                color: Colors.blue,
                splashColor: Colors.white,
              ),
            ],
          );
        }
    );
  }
}
