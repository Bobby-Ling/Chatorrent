import 'package:chatorrent/model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => DataModel(),
      child: const MainApp(),  // 删除const
    ),
  );
}

class MainListView extends StatelessWidget {
  const MainListView({super.key});

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<DataModel>(context);
    return ListView.builder(
      itemCount: model.data.length,
      itemBuilder: (BuildContext context, int index) {
        return Text(
          model.data[index],
        );
      },
    );
  }
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(  // 删除const
        body: const Center(
          child: MainListView(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<DataModel>().appendData("${context.read<DataModel>().data.last} ccc");
          },
          tooltip: 'add',
          child: const Icon(Icons.add),  // 保留Icon的const
        ),
      ),
    );
  }
}
