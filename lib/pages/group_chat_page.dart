import 'package:chatorrent/model/message_data_model.dart';
import 'package:chatorrent/model/group_chat_data_model.dart';
import 'package:chatorrent/pages/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GroupChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dataModel = Provider.of<GroupChatDataModel>(context);
    // final messageDateModel = Provider.of<MessageDataModel>(context);
    final groupChats = dataModel.getGroupChats();

    return ListView.builder(
      itemCount: groupChats.length,
      itemBuilder: (context, index) {
        final groupChat = groupChats[index];
        return Card(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: ListTile(
            title: Text(
              groupChat['group_name'] ?? '',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(groupChat['last_message'] ?? ''),
            trailing: Text(
              groupChat['timestamp'] ?? '',
              style: TextStyle(color: Colors.grey),
            ),
            onTap: () {
              // Navigate to ChatPage with groupId
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatPage(groupId: groupChat['id']),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
