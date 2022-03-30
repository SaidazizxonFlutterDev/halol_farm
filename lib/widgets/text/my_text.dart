import 'package:flutter/material.dart';

Text MyText(String txt, {Color? clr, double? size, FontWeight? weight}) {
  return Text(
    txt,
    style: TextStyle(color: clr, fontSize: size, fontWeight: weight),
  );
}
