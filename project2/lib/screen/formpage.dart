import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
                children: [
                  TextFormField(decoration: new InputDecoration(labelText: "ชื่อรายการ"),
                  autofocus: true,),
                  TextFormField(decoration: new InputDecoration(labelText: "จำนวนเงิน"),
                  keyboardType: TextInputType.number,),
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text('Submit'),),


                  ],
        ),
    ),
      ),
    );
  }
}
