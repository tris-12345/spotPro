import 'package:flutter/material.dart';
import 'incoming_requests.dart';
class MessagingScreen extends StatelessWidget {
  final Request request;

  const MessagingScreen({
    Key?key,
    required this.request,
    }) :super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(request.userID),
      ),
    );
  }
}

