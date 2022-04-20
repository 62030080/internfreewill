import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'checkimg.dart';

class CoinBox extends StatelessWidget {
  String cname; //ชื่อเหรียญ
  double cprice; //ราคาเหรียญ
  String cimage; //รูปเหรียญ
  Color color; //สีกล่อง
  double size; //ขนาดกล่อง
  CoinBox(this.cname, this.cprice, this.cimage, this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      height: size,
      child: Row(
        children: [
          Expanded(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cname,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '${NumberFormat("#,###.#####").format(cprice)} USD',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          ),

          Expanded(child:SizedBox(
              width: 50,
              height: 50,
              child: CheckImg(
                aimg: cimage,
              ))
              // Image(
              //   image: NetworkImage(cimage),width: 100,height: 50,))
            ,)
          ],
      ),
    );
  }
}
