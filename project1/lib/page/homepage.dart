import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2_coinapi/material/coinbox.dart';
import 'package:flutter_application_2_coinapi/page/secondpage.dart';
import '../material/coinDataAPI.dart';
import '../material/variable.dart';
import 'package:http/http.dart' as http;
// import '../material/coinRank.dart';


class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  // int _counter = 0;
  static const String head = 'ท่านต้องการซื้อ';
  List<Variable_Of_Project> variable = [
    Variable_Of_Project(head, "French Bulldog", "10000 Baht",
        "assets/frenchbulldog.jpg", "สุนัขพันธ์หน้าสั้น จอมตด ขยันกรน"),
    Variable_Of_Project(head, "Pug", "5000 Baht", "assets/pug.jpg",
        "สุนัขพันธ์หน้าสั้น ตัวอ้วน ขาสั้น"),
    Variable_Of_Project(head, "Pomeranian", "15000 Baht", "assets/pom.jpg",
        "สุนัขตัวเล็ก ขนปุกปุย จอมเห่า"),
    Variable_Of_Project(head, "Poodle", "14000 Baht", "assets/poodle.jpg",
        "สุนัขขนนุ่ม คุ้นหน้าคุ้นตา แสนรู้"),
  ];
  // CoinDataApi coinDataApiFromJson(String str) => CoinDataApi.fromJson(json.decode(str));
  late CoinDataApi _dataFromAPI;
  // CoinRank ? _dataFromAPI;
  @override
  void initState() {
    super.initState();
    print('เรียกใช้ initState');
    getCoinRank();
  }
  // void onTabTapped(int index) {
  //   setState(() {
  //     _counter = index;
  //   });
  // }

  Future <CoinDataApi> getCoinRank() async {
    print("เรียกใช้ Get_Coin_price");
    var url = Uri.parse("https://api.coinranking.com/v2/coins?");
    var response = await http.get(url, headers: <String, String>{
      'x-access-token':
          'coinrankinga098ff1270353e56c70cd5c7ab350b42627418b2ad36929c'
    });
    _dataFromAPI = coinDataApiFromJson(response.body); // Json to Dart
    // print(response.body);
    return _dataFromAPI;
  }

  @override
  Widget build(BuildContext context) {
    print("เรียกใช้ build");
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // "ขายสุนัข",
            "เหรียญ",
          style: TextStyle(fontSize: 30.0),
        ),
      ),
      body: FutureBuilder(

        future: getCoinRank(),
        builder: (BuildContext context,AsyncSnapshot<dynamic> snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            var result = snapshot.data;
            return ListView.builder(
              itemCount: _dataFromAPI.data?.coins!.length,
              itemBuilder: (BuildContext context, int index){
              return Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      CoinBox(
                          "${result.data.coins[index].symbol}",
                          double.parse('${result.data.coins[index].price}'),
                          "${result.data.coins[index].iconUrl}",
                          Colors.white,
                          100)
                    ],
                  )
              );
              }
            );
            // return ListView(
            //   children: [
            //     ListTile(title: Text(result.status),),
            //     ListTile(title: Text("${result.data}"),),
            //     ListTile(title: Text("${result.data.coins[0].name}"),)
            //   ],
            // );
          }
          return LinearProgressIndicator();
        },)




  // body: ListView.builder(
      //     itemCount: variable.length,
      //     itemBuilder: (BuildContext context, int index) {
      //       Variable_Of_Project dog = variable[index];
      //       return Column(
      //         children: [
      //           Card(
      //             child: Center(
      //                 child: InkWell(
      //               onTap: () {
      //                 // showDialog(
      //                 //   context: context,
      //                 //   builder: (BuildContext context){
      //                 //     return Second_Page_Stl(
      //                 //       title: variable[index].title,
      //                 //       name: variable[index].name,
      //                 //       price: variable[index].price,
      //                 //       image: variable[index].image,
      //                 //       desc: variable[index].desc,
      //                 //     );
      //                 //   });
      //                 //////////////////////////////////////////
      //                 // showDialog(
      //                 //   context: context,
      //                 //   builder: (context) => Second_Page_Stl(
      //                 //       title: variable[index].title,
      //                 //       name: variable[index].name,
      //                 //       price: variable[index].price,
      //                 //       image: variable[index].image,
      //                 //       desc: variable[index].desc,
      //                 //     )
      //                 //   );
      //                 /////////////////////////////////////////
      //                 Navigator.push(
      //                   context,
      //                   MaterialPageRoute(builder: (context) {
      //                     return Second_Page_Stl(
      //                       title: variable[index].title,
      //                       name: variable[index].name,
      //                       price: variable[index].price,
      //                       image: variable[index].image,
      //                       desc: variable[index].desc,
      //                     );
      //                   }),
      //                 );
      //               },
      //               child: Column(
      //                 children: [
      //                   Container(
      //                     height: 300,
      //                     width: 390,
      //                     child: Image(
      //                       image: AssetImage(dog.image),
      //                     ),
      //                   ),
      //                   Container(
      //                     height: 50,
      //                     child: Text(
      //                       dog.name,
      //                       style: TextStyle(fontSize: 30.0),
      //                     ),
      //                   )
      //                 ],
      //               ),
      //             )),
      //           ),
      //         ],
      //       );
      //     }),
    );
  }
}
