import 'package:flutter/material.dart';

class SlideDots extends StatefulWidget {
  bool isActive;
  SlideDots(this.isActive);

  @override
  _SlideDotsState createState() => _SlideDotsState();
}

class _SlideDotsState extends State<SlideDots> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 50),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: widget.isActive ? 13 : 10,
      width: widget.isActive ? 13 : 10,
      decoration: BoxDecoration(
        color: widget.isActive ? Colors.black87 : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(13)),
      ),
    );
  }
}