import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_demo/provider/provider.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("多个provider监听测试"),
        actions: [
          IconButton(
            onPressed: () {
              context.read(cellStateProvider).state += 1;
            }, 
            icon: Icon(Icons.add)
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
        return _Cell(index);
      }),
    );
  }
}

class _Cell extends ConsumerWidget {
  final int index;

  _Cell(this.index);
  @override
  Widget build(BuildContext context, watch) {
    final res = watch(cellStateProvider).state;
    return ListTile(
      title: Text("$res ==> "),
    );
  }
}