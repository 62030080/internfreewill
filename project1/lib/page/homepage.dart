import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2_coinapi/material/homebody.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);
  @override
  State<Home_Page> createState() => _Home_PageState();
}
class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    print("เรียกใช้ build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Coin", style: TextStyle(fontSize: 30.0),),
      ),
      body: MainBodyStl(),
    );
  }
}
