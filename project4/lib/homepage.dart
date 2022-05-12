import 'package:flutter/material.dart';

class HomePageStl extends StatelessWidget {
  const HomePageStl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePageStf();
  }
}

class HomePageStf extends StatefulWidget {
  const HomePageStf({Key? key}) : super(key: key);

  @override
  State<HomePageStf> createState() => _HomePageStfState();
}

class _HomePageStfState extends State<HomePageStf> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: _onWillPop,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Home Page"),
        ),
        body: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}

