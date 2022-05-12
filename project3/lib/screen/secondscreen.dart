import 'package:flutter/material.dart';

class SPageStl extends StatelessWidget {
  const SPageStl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SPageStf();
  }
}
class SPageStf extends StatefulWidget {
  const SPageStf({Key? key}) : super(key: key);

  @override
  State<SPageStf> createState() => _SPageStfState();
}

class _SPageStfState extends State<SPageStf> {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("HELLO"),);
  }
}

