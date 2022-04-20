import 'package:flutter/material.dart';
import 'package:flutter_application_2_coinapi/material/coingraph.dart';
import 'package:intl/intl.dart';

import '../material/checkimg.dart';

class CoinDataPageStl extends StatelessWidget {
  final String index, icon, symbol, name, price, marketCap, volume, rank;
  const CoinDataPageStl({Key? key, required this.icon,required this.symbol, required this.name, required this.price, required this.marketCap, required this.volume, required this.rank, required this.index}) : super(key: key);

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
        index_c: index);
  }
}

class CoinDataPageStf extends StatefulWidget {
  final String index_c, icon_c, symbol_c, name_c, price_c, marketCap_c, volume_c, rank_c;
  const CoinDataPageStf({Key? key,required this.icon_c, required this.symbol_c, required this.name_c, required this.price_c, required this.marketCap_c, required this.volume_c, required this.rank_c, required this.index_c}) : super(key: key);
  @override
  State<CoinDataPageStf> createState() => _CoinDataPageStfState();
}

class _CoinDataPageStfState extends State<CoinDataPageStf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CoinDataPage'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
          Expanded(child: Center(child: Text(
            widget.symbol_c, style: TextStyle(
              fontSize: 60,fontWeight: FontWeight.bold,color: Colors.yellow)))),
          Expanded(child: CheckImg(aimg: widget.icon_c,),),
          Expanded(child: Text("Volume = " +
              '${NumberFormat("#,###.####").format(double.parse(widget.volume_c))}' + " " + "หน่วย", style: TextStyle(
              fontSize: 25,fontWeight: FontWeight.bold,color: Colors.yellow))),
          Expanded(child: Text("Price = " +
            '${NumberFormat("#,###.######").format(double.parse(widget.price_c))}' + " " + "usd", style: TextStyle(
              fontSize: 25,fontWeight: FontWeight.bold,color: Colors.yellow))),
          Expanded(child: Text("MarketCap = " +
              '${NumberFormat("#,###.####").format(double.parse(widget.marketCap_c))}' + " " + "usd", style: TextStyle(
              fontSize: 25,fontWeight: FontWeight.bold,color: Colors.yellow))),
          Expanded(child: Text("Rank = " + widget.rank_c, style: TextStyle(
              fontSize: 25,fontWeight: FontWeight.bold,color: Colors.yellow))),
          Container(
            height: 200,
            width: 50,
              child: CoinGraph(index: widget.index_c,)
          ),
        ],
      ),
    );
  }
}


// [Text(widget.symbol_c,style: TextStyle(color: Colors.red, fontSize: 85),),
// Text(widget.name_c,style: TextStyle(color: Colors.blue, fontSize: 85),),
// Text(widget.price_c,style: TextStyle(color: Colors.green, fontSize: 85),),
// Text(widget.marketCap_c,style: TextStyle(color: Colors.orange, fontSize: 85),),