import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter_Riverpod"),
      ),
      body: Center(
        child: Text("watch provider"),
      ),
    );
  }
}