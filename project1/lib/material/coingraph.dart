import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import 'coinDataAPI.dart';

class CoinGraph extends StatelessWidget {
  final String index;
  const CoinGraph ({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CoinGraphStf(
      indexGragh: index,
    );
  }
}

class CoinGraphStf extends StatefulWidget {
  final String indexGragh;
  const CoinGraphStf({Key? key, required this.indexGragh}) : super(key: key);

  @override
  State<CoinGraphStf> createState() => _CoinGraphStfState();
}

class _CoinGraphStfState extends State<CoinGraphStf> {

  late CoinDataApi _dataFromAPI;
  // CoinRank ? _dataFromAPI;
  @override
  void initState() {
    super.initState();
    print('เรียกใช้ initState');
    getCoinRankForGraph();
  }
  Future <CoinDataApi> getCoinRankForGraph() async {
    print("เรียกใช้ Get_Coin_price");
    var url = Uri.parse("https://api.coinranking.com/v2/coins?");
    var response = await http.get(url, headers: <String, String>{
      'x-access-token':
      'coinrankinga098ff1270353e56c70cd5c7ab350b42627418b2ad36929c'
    });
    _dataFromAPI = coinDataApiFromJson(response.body); // Json to Dart
    return _dataFromAPI;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: FutureBuilder(
        future: getCoinRankForGraph(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var result = snapshot.data;
            return Card(
              margin: const EdgeInsets.all(3),
              elevation: 1,
              child: InkWell(
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    //Initialize the spark charts widget
                    child: SfSparkAreaChart.custom(
                      //Enable the trackball
                      trackball: SparkChartTrackball(
                          activationMode: SparkChartActivationMode.tap),

                      color: Colors.lightBlueAccent,
                      xValueMapper: (int index2) => index2 ,
                      yValueMapper: (int index2) => double.parse( result.data.coins[ int.parse( widget.indexGragh )].sparkline[index2]) ,
                      dataCount: result.data.coins[int.parse( widget.indexGragh )].sparkline.length,


                    ),
                  ),
                ),

              ),
            );
          }
          return LinearProgressIndicator();
        },
      ),
    );
  }
}