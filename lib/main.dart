import 'package:flutter/material.dart';
import 'package:kidsupp/kid_activity.dart';
import 'package:kidsupp/ui/akis.dart';
import 'package:kidsupp/ui/ana_sayfa.dart';
import 'package:kidsupp/ui/bildirimler.dart';
import 'package:kidsupp/ui/mesajlar.dart';
import 'ui/drawer.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KidsUpp',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  List<Widget> tumSayfalar;
  Bildirimler bildirimler;
  EnYeniler anaSayfa;
  MufredatBody mufredatBody;
  Mesajlar mesajlar;
  var keyAnaSayfa = PageStorageKey("keyAnaSayfa");
  var keyBildirim = PageStorageKey("keyBildirim");
  var keyMesaj = PageStorageKey("keyMesaj");
  var keyMufredat = PageStorageKey("keyMufredat");
  bool inAppPurchase = true;
  List<String> titles = [
    "KidsUpp",
    "Bildirimler",
    "Ebeveynler İçin",
    "Müfredat"
  ];

  @override
  void initState() {
    bildirimler = Bildirimler(keyBildirim);
    anaSayfa = EnYeniler(keyAnaSayfa);
    mufredatBody = MufredatBody();
    mesajlar = Mesajlar(keyMesaj);
    tumSayfalar = [anaSayfa, bildirimler, mesajlar, mufredatBody];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height: 75.0,
        width: 75.0,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>KidActivity()));
            },
            splashColor: Colors.blue.shade800,
            backgroundColor: Colors.blueAccent,
            child: SvgPicture.asset("assets/hippo.svg"),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomNavMenu(),
      drawer: DrawerMenu(),
      appBar: GradientAppBar(
        title: Text(
          titles[_currentIndex],
          style: TextStyle(color: Colors.white),
        ),
        gradient: LinearGradient(colors: [Colors.blue, Colors.pink]),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: _currentIndex <= tumSayfalar.length - 1
          ? tumSayfalar[_currentIndex]
          : null,
    );
  }

  BottomNavigationBar bottomNavMenu() {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.fiber_new), title: Text("En Yeniler")),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), title: Text("Bildirimler")),
        BottomNavigationBarItem(
            icon: Icon(Icons.graphic_eq), title: Text("Analizler")),
        BottomNavigationBarItem(
            icon: Icon(Icons.library_books), title: Text("Gelişim")),
      ],
      fixedColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
