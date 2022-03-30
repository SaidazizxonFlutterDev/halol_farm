import 'package:flutter/material.dart';
import 'package:halol_farm/core/constants/color_const.dart';
import 'package:halol_farm/core/constants/size_config.dart';

CircleAvatar miniDot({bool isActive = false}) {
  return CircleAvatar(
      backgroundColor: ColorConst.primary,
      radius: getW(6),
      child: CircleAvatar(
        backgroundColor: isActive ? ColorConst.primary : ColorConst.white,
        radius: getW(4),
      ));
}
