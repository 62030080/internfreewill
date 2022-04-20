import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CheckImg extends StatelessWidget {
  final String aimg;
  const CheckImg({Key? key, required this.aimg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckImgStf(
      checksuccessimg: aimg,
    );
  }
}

class CheckImgStf extends StatefulWidget {
  final String checksuccessimg;
  const CheckImgStf({Key? key, required this.checksuccessimg}) : super(key: key);

  @override
  State<CheckImgStf> createState() => _CheckImgStfState();
}

class _CheckImgStfState extends State<CheckImgStf> {
  @override
  Widget build(BuildContext context) {
    RegExp exp = RegExp(r'.svg' , caseSensitive: false);
    String str = "${widget.checksuccessimg}";
    Iterable<RegExpMatch> matches = exp.allMatches(str);


    if(exp.hasMatch(str)){
      return Container(
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child:  SvgPicture.network("${widget.checksuccessimg}",
            width: 150,
            height: 150,
          ),
        ),
      );
    }else{
      return Container(
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child:  Image.network("${widget.checksuccessimg}"
          ),
        ),
      );
//asdsadsadsdsadsadsa
    }


  }
}

