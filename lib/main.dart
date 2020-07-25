
import 'package:flutter/material.dart';

import 'package:day8_splash/LoginPage.dart';
// import 'package:flutter_circular_text/circular_text/model.dart';
// import 'package:flutter_circular_text/circular_text/widget.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _dark = false;

  @override
  void initState() {
    super.initState();
    _dark = false;
  }

  Brightness _getBrightness() {
    return _dark ? Brightness.dark : Brightness.light;
  }

  bool visibilityicon = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      isMaterialAppTheme: true,
      data: ThemeData(
        brightness: _getBrightness(),
      ),
      child: Scaffold(
        backgroundColor: (_dark ? null : Colors.white),
        appBar: AppBar(
          elevation: 0,
          brightness: _getBrightness(),
          iconTheme: IconThemeData(color: _dark ? Colors.white : Colors.black),
          backgroundColor: Colors.transparent,
          title: Center(
            child: Text(
              visibilityicon ? 'Edit Profile' : 'Profile',
              style: TextStyle(color: _dark ? Colors.white : Colors.black),
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.developer_mode),
              onPressed: () {
                setState(() {
                   _dark = !_dark;
                });
              },
            ),
          ],
          
        ),
        body: Container(
          color: (_dark ? null : Colors.white),
          padding: EdgeInsets.only(top: 300.0, right: 10, left: 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                color: (_dark ? null : Colors.white),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        shape: BoxShape.circle,
                        color: (_dark ? Colors.black : Colors.white),
                        boxShadow: [
                          new BoxShadow(
                            color: (_dark ? Colors.white : Colors.black38),
                            blurRadius: 7.0,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(right: 2),
                      child: Icon(
                        Icons.school,
                        color: Colors.deepOrangeAccent,
                        size: 35,
                      ),
                    ),
                    Center(
                      child: Container(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 0, top: 0, bottom: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                  left: 0.0, right: 0, top: 10, bottom: 3),
                              margin: EdgeInsets.all(0),
                              decoration: BoxDecoration(),
                              child: Text(
                                "Institute Name",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 00.0, right: 0, top: 0, bottom: 10),
                              child: Text(
                                "SKY",
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      (_dark ? Colors.white : Colors.black87),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 55,
                      padding: EdgeInsets.only(left: 140),
                      decoration: BoxDecoration(
                        color: (_dark ? null : Colors.white),
                      ),
                      child: visibilityicon
                          ? MaterialButton(
                              onPressed: () {
                                setState(() {
                                  visibilityicon = !visibilityicon;
                                });
                              },
                              child: Icon(
                                Icons.edit,
                                color: Colors.grey,
                                size: 30,
                              ),
                            )
                          : SizedBox(
                              height: 0.0,
                            ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                color: (_dark ? null : Colors.white),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        shape: BoxShape.circle,
                        color: (_dark ? Colors.black : Colors.white),
                        boxShadow: [
                          new BoxShadow(
                            color: (_dark ? Colors.white : Colors.black38),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(right: 0),
                      child: Icon(
                        Icons.contact_mail,
                        color: Colors.deepOrangeAccent,
                        size: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 0, top: 0, bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                                left: 0.0, right: 0, top: 10, bottom: 3),
                            margin: EdgeInsets.all(0),
                            decoration: BoxDecoration(),
                            child: Text(
                              "Institue E-Mail",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 00.0, right: 0, top: 0, bottom: 10),
                            margin: EdgeInsets.all(0),
                            child: Text(
                              "Sky@gmail.com",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: (_dark ? Colors.white : Colors.black87),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 55,
                      padding: EdgeInsets.only(left: 68),
                      decoration: BoxDecoration(
                        color: (_dark ? null : Colors.white),
                      ),
                      child: visibilityicon
                          ? MaterialButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.edit,
                                color: Colors.grey,
                                size: 30,
                              ),
                            )
                          : SizedBox(
                              height: 0.0,
                            ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                color: (_dark ? null : Colors.white),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: (_dark ? Colors.white : Colors.white),
                        ),
                        shape: BoxShape.circle,
                        color: (_dark ? Colors.black : Colors.white),
                        boxShadow: [
                          new BoxShadow(
                            color: (_dark ? Colors.white : Colors.black38),
                            blurRadius: 7.0,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(right: 0),
                      child: Icon(
                        Icons.phone_iphone,
                        color: Colors.deepOrangeAccent,
                        size: 35,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 0, top: 0, bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                                left: 0.0, right: 0, top: 10, bottom: 3),
                            margin: EdgeInsets.all(0),
                            decoration: BoxDecoration(),
                            child: Text(
                              "Phone Number",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 00.0, right: 0, top: 0, bottom: 10),
                            margin: EdgeInsets.all(0),
                            child: Text(
                              "1336547890",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: (_dark ? Colors.white : Colors.black87),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 55,
                      padding: EdgeInsets.only(left: 100),
                      decoration: BoxDecoration(
                        color: (_dark ? null : Colors.white),
                      ),
                      child: visibilityicon
                          ? MaterialButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.edit,
                                color: Colors.grey,
                                size: 30,
                              ),
                            )
                          : SizedBox(
                              height: 0.0,
                            ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 65,
                width: MediaQuery.of(context).size.width,
                color: (_dark ? null : Colors.white),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 55,
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: (_dark ? Colors.white : Colors.white),
                        ),
                        shape: BoxShape.circle,
                        color: (_dark ? Colors.black : Colors.white),
                        boxShadow: [
                          new BoxShadow(
                            color: (_dark ? Colors.white : Colors.black38),
                            blurRadius: 7.0,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.only(right: 0),
                      child: Icon(
                        Icons.my_location,
                        color: Colors.deepOrangeAccent,
                        size: 30,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 0, top: 0, bottom: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                                left: 0.0, right: 0, top: 10, bottom: 3),
                            margin: EdgeInsets.all(0),
                            decoration: BoxDecoration(),
                            child: Text(
                              "Location",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 00.0, right: 0, top: 0, bottom: 10),
                            margin: EdgeInsets.all(0),
                            child: Text(
                              "Surat",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: (_dark ? Colors.white : Colors.black87),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 55,
                      padding: EdgeInsets.only(left: 170),
                      decoration: BoxDecoration(

                        color: (_dark ? null : Colors.white),
                      ),
                      child: visibilityicon
                          ? MaterialButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.edit,
                                color: Colors.grey,
                                size: 30,
                              ),
                            )
                          : SizedBox(
                              height: 0.0,
                            ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Container(
                  width: 180,
                  padding: EdgeInsets.all(0),
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.deepOrangeAccent,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                    color: Colors.deepOrangeAccent,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.black26,
                        blurRadius: 7.0,
                      ),
                    ],
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        visibilityicon = !visibilityicon;
                      });
                    },
                    child: Center(
                      child: Text(
                        visibilityicon ? 'Profile' : 'Edit Profile',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
