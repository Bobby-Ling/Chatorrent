import 'package:chatorrent/model/message_data_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChatPage extends StatelessWidget {
  final int groupId; // or use `String groupName` if preferred

  const ChatPage({super.key, required this.groupId});

  @override
  Widget build(BuildContext context) {
    final messageDateModel = Provider.of<MessageDataModel>(context);

    final messages = messageDateModel.getMessagesForGroup(groupId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Chat - Group #$groupId'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final message = messages[index];
          return ListTile(
            title: Text(message['content']),
            subtitle: Text(message['timestamp']),
          );
        },
      ),
    );
  }
}
