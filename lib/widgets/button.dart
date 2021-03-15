import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({this.color, this.label});
  final Color color;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text(label)),
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 3))
        ],
      ),
    );
  }
}
