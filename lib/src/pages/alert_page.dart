import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  //const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
        backgroundColor: Color(0xFFdd9933),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.arrow_back_ios ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}