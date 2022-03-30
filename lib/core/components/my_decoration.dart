import 'package:flutter/material.dart';

BoxDecoration myDecorartion(
    {double topR = 0,
    double topL = 0,
    double botR = 0,
    double botL = 0,
    Color? clr}) {
  return BoxDecoration(
    color: clr,
    borderRadius: BorderRadius.only(
        topRight: Radius.circular(topR),
        topLeft: Radius.circular(topL),
        bottomLeft: Radius.circular(botL),
        bottomRight: Radius.circular(botR)),
  );
}
