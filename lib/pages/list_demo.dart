import 'package:chatorrent/model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListDemo extends StatelessWidget {
  const ListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('data model demo'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Enter a string',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  Provider.of<DataModel>(context, listen: false).inputValue =
                      value;
                },
              ),
            ),
            const Expanded(
              child: MainListView(),
            ),
          ],
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                Provider.of<DataModel>(context, listen: false).acceptData();
              },
              tooltip: 'Append Data',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class MainListView extends StatelessWidget {
  const MainListView({super.key});

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<DataModel>(context);
    return ListView.builder(
      itemCount: model.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(
            "${model.getData(index)}",
          ),
        );
      },
    );
  }
}
