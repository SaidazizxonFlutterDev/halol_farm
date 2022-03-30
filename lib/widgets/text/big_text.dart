import 'package:flutter/material.dart';
import 'package:halol_farm/core/constants/size_const.dart';
import 'package:halol_farm/core/constants/weight_const.dart';

Text BigText(String txt,
    {Color clr = Colors.black}) {
  return Text(
    txt,
    style: TextStyle(
      color: clr,
      fontSize: SizeConst.large,
      fontWeight: WeightConst.bold,
    ),
  );
}
