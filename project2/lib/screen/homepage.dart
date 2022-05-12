import 'package:flutter/material.dart';
import 'package:project2/screen/formpage.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double devicewidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [HexColor('#FFFFFF'), HexColor('#FFB1EE')])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: const Text("บัญชี", style: TextStyle(fontSize: 30,color: Colors.black,)),
          ),
          actions: [
            IconButton(
              padding: EdgeInsets.only(right: 50),
              icon: const Icon(Icons.add , color: Colors.black, size: 50,),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return FormPage();
                }));
              },
            )
          ],
        ),
        // extendBodyBehindAppBar: true,
        body: ListView.builder(itemCount: 10 ,itemBuilder: (context, int index){
          padding: EdgeInsets.only(top:0);
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            elevation: 5,
            child: ListTile(
              leading: CircleAvatar(child: FittedBox(child: Text("555"),),),
              title: Text("ชื่อบัญชี"),
              subtitle: Text("รายละเอียดบัญชี"),
            ),
          );
      }
        ),
      ),
    );
  }
}
