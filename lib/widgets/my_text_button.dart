import 'package:flutter/material.dart';
import 'package:halol_farm/widgets/text/my_text.dart';

TextButton myTextButton(String txt, Color clr, size, var callback) {
  return TextButton(
    onPressed: callback,
    child: MyText(txt, clr: clr, size: size),
  );
}
