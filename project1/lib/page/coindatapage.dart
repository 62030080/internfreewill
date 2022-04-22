import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_2_coinapi/material/coingraph.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import '../material/checkimg.dart';


class CoinDataPageStl extends StatelessWidget {
  final String?
  color,
      index, icon, symbol, name, price, marketCap, volume, rank;
  const CoinDataPageStl({Key? key,
    required this.icon,
    required this.symbol,
    required this.name,
    required this.price,
    required this.marketCap,
    required this.volume,
    required this.rank,
    required this.index,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoinDataPageStf(
        icon_c: icon,
        symbol_c: symbol,
        name_c: name,
        price_c: price,
        marketCap_c: marketCap,
        volume_c: volume,
        rank_c: rank,
        index_c: index,
        color_c: color
    );
  }
}

class CoinDataPageStf extends StatefulWidget {
  final String?
  color_c,
      index_c, icon_c, symbol_c, name_c, price_c, marketCap_c, volume_c, rank_c;
  const CoinDataPageStf({Key? key,
    required this.icon_c,
    required this.symbol_c,
    required this.name_c,
    required this.price_c,
    required this.marketCap_c,
    required this.volume_c,
    required this.rank_c,
    required this.index_c,
    required this.color_c
  }) : super(key: key);
  @override
  State<CoinDataPageStf> createState() => _CoinDataPageStfState();
}

class _CoinDataPageStfState extends State<CoinDataPageStf> {
  @override
  Widget build(BuildContext context) {
    // print(widget.color_c);
    // print(widget.color_c??'#000000');
    String color_cc = widget.color_c??'';
    if(widget.color_c == 'null'){
      color_cc = '#949494';
    }
    return Scaffold(
      backgroundColor: HexColor(color_cc),
      appBar: AppBar(
        backgroundColor: HexColor(color_cc),
        title: Text('CoinDataPage'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Text(
              widget.symbol_c??'', style: TextStyle(
                fontSize: 60,fontWeight: FontWeight.bold,color: Colors.black))),
            Container(
              height: 300,
              width: 300,
              child: CheckImg(aimg: widget.icon_c??'',
                        symcheck: widget.symbol_c??''
              ),
            ),
            Text("Volume = " +
                '${NumberFormat("#,###.####").format(double.parse(widget.volume_c??'0'))}' + " " + "หน่วย", style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
            Text("Price = " +
              '${NumberFormat("#,###.######").format(double.parse(widget.price_c??'0'))}' + " " + "usd", style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
            Text("MarketCap = " +
                '${NumberFormat("#,###.####").format(double.parse(widget.marketCap_c??'0'))}' + " " + "usd", style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
            Text("Rank = ${widget.rank_c??''}", style: TextStyle(
                fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
            // Text("Rank = ${widget.rank_c??''}", style: TextStyle(
            //     fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
            // Text("Rank = ${widget.rank_c??''}", style: TextStyle(
            //     fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
            // Text("Rank = ${widget.rank_c??''}", style: TextStyle(
            //     fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
            // Text("Rank = ${widget.rank_c??''}", style: TextStyle(
            //     fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
            Container(
              height: 200,
              width: 500,
                child: CoinGraph(index: widget.index_c??'',color: widget.color_c??'')
            ),
          ],
        ),
      ),
    );
  }
}


// [Text(widget.symbol_c,style: TextStyle(color: Colors.red, fontSize: 85),),
// Text(widget.name_c,style: TextStyle(color: Colors.blue, fontSize: 85),),
// Text(widget.price_c,style: TextStyle(color: Colors.green, fontSize: 85),),
// Text(widget.marketCap_c,style: TextStyle(color: Colors.orange, fontSize: 85),),
