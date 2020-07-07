import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kidsupp/ui/video_screen_math.dart';

class EnYeniler extends StatefulWidget {
  EnYeniler(Key k) : super(key: k);

  @override
  _EnYenilerState createState() => _EnYenilerState();
}

class _EnYenilerState extends State<EnYeniler> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoMath()));
          },
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width - 40,
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
                    flex: 16,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10)),
                        color: Colors.blue,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.ilkokul1.com/wp-content/uploads/2019/12/MATEMAT%C4%B0K-7-768x394.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      width: double.infinity,
                      child: Text(
                        "Eğlenceli Toplama",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(10)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.fromLTRB(20, 0, 10, 10),
                      alignment: Alignment.topLeft,
                      width: double.infinity,
                      child: Text("Matematik"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoMath()));
          },
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width - 40,
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
                    flex: 16,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10)),
                        color: Colors.blue,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.ilkokul1.com/wp-content/uploads/2019/12/MATEMAT%C4%B0K-7-768x394.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      width: double.infinity,
                      child: Text(
                        "Eğlenceli Toplama",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(10)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.fromLTRB(20, 0, 10, 10),
                      alignment: Alignment.topLeft,
                      width: double.infinity,
                      child: Text("Matematik"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoMath()));
          },
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width - 40,
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
                    flex: 16,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10)),
                        color: Colors.blue,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.ilkokul1.com/wp-content/uploads/2019/12/MATEMAT%C4%B0K-7-768x394.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      width: double.infinity,
                      child: Text(
                        "Eğlenceli Toplama",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(10)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.fromLTRB(20, 0, 10, 10),
                      alignment: Alignment.topLeft,
                      width: double.infinity,
                      child: Text("Matematik"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoMath()));
          },
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width - 40,
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
                    flex: 16,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10)),
                        color: Colors.blue,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.ilkokul1.com/wp-content/uploads/2019/12/MATEMAT%C4%B0K-7-768x394.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      width: double.infinity,
                      child: Text(
                        "Eğlenceli Toplama",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(10)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.fromLTRB(20, 0, 10, 10),
                      alignment: Alignment.topLeft,
                      width: double.infinity,
                      child: Text("Matematik"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoMath()));
          },
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width - 40,
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
                    flex: 16,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10)),
                        color: Colors.blue,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.ilkokul1.com/wp-content/uploads/2019/12/MATEMAT%C4%B0K-7-768x394.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      width: double.infinity,
                      child: Text(
                        "Eğlenceli Toplama",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(10)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.fromLTRB(20, 0, 10, 10),
                      alignment: Alignment.topLeft,
                      width: double.infinity,
                      child: Text("Matematik"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoMath()));},
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width - 40,
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
                    flex: 16,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(10)),
                        color: Colors.blue,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://www.ilkokul1.com/wp-content/uploads/2019/12/MATEMAT%C4%B0K-7-768x394.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 10, 0),
                      alignment: Alignment.centerLeft,
                      color: Colors.white,
                      width: double.infinity,
                      child: Text(
                        "Eğlenceli Toplama",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(10)),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.fromLTRB(20, 0, 10, 10),
                      alignment: Alignment.topLeft,
                      width: double.infinity,
                      child: Text("Matematik"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
