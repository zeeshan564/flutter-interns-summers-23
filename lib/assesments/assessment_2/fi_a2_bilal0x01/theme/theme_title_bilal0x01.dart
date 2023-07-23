import 'package:flutter/material.dart';

Widget bigTitle(String content, {FontWeight? fontWeight, Color? textColor}) {
  return Text(
    content,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: textColor,
      fontSize: 28,
      fontWeight: fontWeight,
    ),
  );
}

Widget mediumTitle(String content, {FontWeight? fontWeight, Color? textColor}) {
  return Text(
    content,
    style: TextStyle(
      color: textColor,
      fontSize: 20,
      fontWeight: fontWeight,
    ),
  );
}

Widget smallTitle(String content, {FontWeight? fontWeight, Color? textColor}) {
  return Text(
    content,
    style: TextStyle(
      color: textColor,
      fontSize: 16,
      fontWeight: fontWeight,
    ),
  );
}

Widget subtitle(
  String content, {
  FontWeight? fontWeight,
  Color textColor = Colors.grey,
}) {
  return Text(
    content,
    style: TextStyle(
      color: textColor,
      fontSize: 12,
      fontWeight: fontWeight,
    ),
  );
}

Widget bigSubtitle(
  String content, {
  FontWeight? fontWeight,
  Color textColor = Colors.grey,
}) {
  return Text(
    content,
    style: TextStyle(
      color: textColor,
      fontSize: 14,
      fontWeight: fontWeight,
    ),
  );
}
