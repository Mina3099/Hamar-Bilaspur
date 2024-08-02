import 'package:flutter/material.dart';

class FutureWork extends StatelessWidget {
  final String title;

  FutureWork({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Color(0xFF49BAEE),
      ),
      body: Center(
        child: Text('Future Upcoming Content'),
      ),
    );
  }
}