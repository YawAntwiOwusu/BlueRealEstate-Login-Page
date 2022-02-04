import 'package:flutter/material.dart';
import 'package:stc_login/myapp.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            width: MediaQuery.of(context).size.width,
            color: Color(0xffF1D50A),
            child: Column(
              children: [
                Image.asset(
                  "images/Building-cuate.png",
                  fit: BoxFit.cover,
                  width: 350,
                  height: 350,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Color(0xff407BFF),
                      fontSize: 38,
                      fontWeight: FontWeight.bold),
                ),
                Text("CONNECT WITH CERTIFIED",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xff37474F),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                Text(
                  "ESTATE BROKER",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff37474F),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 20),
                  child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          labelText: "USERNAME",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)))),
                ),
                Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 10),
                    child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            labelText: "PASSWORD",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))))),
                Container(
                  width: 300,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                      color: Color(0xff407BFF),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                      onPressed: () {},
                      child: Text("LOG IN")),
                ),
                Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      "Forgot password?",
                    ))
              ],
            )));
  }
}
