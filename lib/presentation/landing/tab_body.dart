import 'package:flutter/material.dart';

class TabBody extends StatelessWidget {
  TextData data;
  TabBody({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Column(
        children: [
          Text(
            data.title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 30),
          Text(
            data.body,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Colors.white54),
          ),
        ],
      ),
    );
  }
}

class TextData {
  String title;
  String body;

  TextData({required this.title, required this.body});
}
