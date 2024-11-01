import 'package:chatorrent/main_page.dart';
import 'package:chatorrent/model/data_model.dart';
import 'package:chatorrent/model/group_chat_data_model.dart';
import 'package:chatorrent/model/message_data_model.dart';
import 'package:chatorrent/pages/list_demo.dart';
import 'package:chatorrent/pages/group_chat_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => DataModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          fontFamily: "微软雅黑"),
      home: NavigationPage(),
      routes: {
        '/contacts': (context) => PageWithAppBar(
              title: 'Contacts',
              child: ListDemo(),
            ),
        '/groups': (context) => PageWithAppBar(
              title: 'Groups',
              child: ChangeNotifierProvider(
                create: (BuildContext context) => GroupChatDataModel(),
                child: GroupChatPage(),
              ),
            ),
        '/messages': (context) => PageWithAppBar(
              title: 'Messages',
              child: ListDemo(),
            ),
        '/settings': (context) => PageWithAppBar(
              title: 'Settings',
              child: ListDemo(),
            ),
      },
    );
  }
}