import 'package:chatorrent/main_page.dart';
import 'package:chatorrent/model/data_model.dart';
import 'package:chatorrent/model/group_chat_data_model.dart';
import 'package:chatorrent/model/message_data_model.dart';
import 'package:chatorrent/pages/list_demo.dart';
import 'package:chatorrent/pages/group_chat_page.dart';
import 'package:chatorrent/pages/settings_page.dart';
import 'package:chatorrent/services/preferences.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  SettingsManager.init();

  runApp(
    // 都是全局单例, 只能初始化一次
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => DataModel()),
        ChangeNotifierProvider(
            create: (BuildContext context) => GroupChatDataModel()),
        ChangeNotifierProvider(
            create: (BuildContext context) => MessageDataModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: Brightness.light,
          fontFamily: "微软雅黑"),
      home: const NavigationPage(),
      routes: {
        '/contacts': (context) => const PageWithAppBar(
              title: 'Contacts',
              child: ListDemo(),
            ),
        '/groups': (context) => const PageWithAppBar(
              title: 'Groups',
              child: GroupChatPage(),
            ),
        '/messages': (context) => const PageWithAppBar(
              title: 'Messages',
              child: ListDemo(),
            ),
        '/settings': (context) => const PageWithAppBar(
              title: 'Settings',
              child: SettingsPage(),
            ),
      },
    );
  }
}