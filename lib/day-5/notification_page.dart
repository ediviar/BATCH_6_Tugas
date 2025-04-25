import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {

    final messages = [
      'Message 1',
      'Message 2',
      'Message 3',
    ];

    final alerts = [
      'Alert 1',
      'Alert 2',
      'Alert 3',
    ];

    return DefaultTabController(
      length: 2, 
      child: Scaffold(
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: 'Messages'),
                Tab(text: 'Alerts'),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.separated(
                    itemCount: messages.length,
                    separatorBuilder: (context, index) => Divider(),
                    itemBuilder: (context, index) => ListTile(
                      leading: CircleAvatar(
                        foregroundImage: NetworkImage("https://assets.goal.com/images/v3/blt2aaca933046f8b00/Cristiano%20Ronaldo%20Portugal%202024%20(4).jpg"),
                        child: Text('${index + 1}'),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {
                          // Handle delete action
                        },
                      ),
                      title: Text('Message ${index + 1}'),
                      subtitle: Text(messages[index]),
                    ),
                  ),
                  ListView.separated(
                    itemCount: alerts.length,
                    separatorBuilder: (context, index) => Divider(),
                    itemBuilder: (context, index) => ListTile(
                      title: Text('Alert ${index + 1}'),
                      subtitle: Text(alerts[index]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}