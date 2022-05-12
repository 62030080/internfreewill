import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project3/screen/secondscreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Test app life cycle'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with WidgetsBindingObserver {
  late Timer timer;
  int count = 0;
  bool active = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addObserver(this);
    timer = Timer.periodic(Duration(seconds: 1), (tm) {
      // setState(() {
      //   count += 1;
      // });
      if (active) {
        setState(() {
          count += 1;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
    WidgetsBinding.instance?.removeObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      active = true;
      print("App is resumed");
    } else if (state == AppLifecycleState.paused) {
      active = false;
      print("App is paused");
    } else if (state == AppLifecycleState.inactive) {
      active = false;
      print("App is inactive");
    } else if (state == AppLifecycleState.detached) {
      print("App is detached");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Text(
            "$count",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          IconButton(
              onPressed: () {
                active = false;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SPageStl())).then((value) {active = true;});
              },
              icon: Icon(Icons.favorite))
        ],
      ),
    );
  }
}
