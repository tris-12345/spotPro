import 'package:flutter/material.dart';
import 'messaginScreen.dart';
class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NotificationTile(),
    );
  }
}

class NotificationTile extends StatefulWidget {
  const NotificationTile({super.key});

  @override
  NotificationTileState createState() => NotificationTileState();
}

class NotificationTileState extends State<NotificationTile> {
  List <Request> requestList = [
    const Request(userID: 'Aarsha', job: 'climbing', status: 'accept', time: '12/12/22'),
    const Request(userID: 'Faiza', job: 'painting', status: 'accept', time: '13/12/22'),
  ];

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: const Text('notifications'),

        ),
        body: ListView.builder(
          itemCount: requestList.length,
          itemBuilder: (context, index) {
            final requestTile = requestList[index];
            return Card(
              child: ListTile(
                title: Text(requestTile.userID),
                subtitle: Text(requestTile.job),
                trailing: Text(requestTile.time),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MessagingScreen(request: requestTile),
                  ));
                },
              ),
            );
          },
        ),
      );
}

class Request{
  final String userID;
  final String job;
  final String status;
  final String time;
  const Request({
    required this.userID,
    required this.job,
    required this.status,
    required this.time,
});
}