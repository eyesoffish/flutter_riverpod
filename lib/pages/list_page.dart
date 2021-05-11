import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod_demo/pages/detail_page.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter_Riverpod"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => DetailPage()));
            }, 
            child: Text("Detail")
          )
        ],
      ),
    );
  }
}