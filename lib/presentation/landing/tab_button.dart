import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  const TabButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
