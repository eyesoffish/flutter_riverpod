import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_demo/provider/provider.dart';


class MoreProviderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("多个provider测试"),
        actions: [
          IconButton(icon: Icon(Icons.add), onPressed: () {
            context.read(cellStateProvider).state += 1;
            context.read(cellStateProvider1).state += 1;
            context.read(cellStateProvider2).state += 1;
            context.read(cellStateProvider3).state += 1;
            context.read(cellStateProvider4).state += 1;
            context.read(cellStateProvider5).state += 1;
            context.read(cellStateProvider6).state += 1;
            context.read(cellStateProvider7).state += 1;
            context.read(cellStateProvider8).state += 1;
            context.read(cellStateProvider9).state += 1;
            context.read(cellStateProvider10).state += 1;
          })
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _Cell(cellStateProvider),
            _Cell(cellStateProvider1),
            _Cell(cellStateProvider2),
            _Cell(cellStateProvider3),
            _Cell(cellStateProvider4),
            _Cell(cellStateProvider5),
            _Cell(cellStateProvider6),
            _Cell(cellStateProvider7),
            _Cell(cellStateProvider8),
            _Cell(cellStateProvider9),
            _Cell(cellStateProvider10),
          ],
        ),
      ),
    );
  }
}


class _Cell extends ConsumerWidget {
  final AutoDisposeStateProvider provider;

  _Cell(this.provider);
  @override
  Widget build(BuildContext context, watch) {
    final res = watch(provider).state;
    return ListTile(
      title: Text("more $res"),
      leading: Text(provider.name ?? "--"),
    );
  }
}