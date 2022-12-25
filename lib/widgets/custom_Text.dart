import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {

    final String ?txt;
    final int? lines;
    final TextDirection? txtDirection;
    final TextStyle? txtStyle;
    CustomText({this.txt,this.txtDirection,this.lines,this.txtStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$txt',
      textDirection: txtDirection,
      maxLines: lines,
      style: txtStyle,
    );
  }
}
