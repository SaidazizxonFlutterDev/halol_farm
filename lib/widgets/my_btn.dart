import 'package:flutter/material.dart';
import 'package:halol_farm/core/constants/size_config.dart';
import 'package:halol_farm/widgets/text/my_text.dart';

class MyButton extends StatelessWidget {
  String txt;
  Color? clr;
  Color? tClr;
  var callback;
   MyButton(this.txt, this.callback,{Key? key, this.clr, this.tClr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ElevatedButton(
      child: MyText(txt, clr: tClr),
      style: ElevatedButton.styleFrom(
        primary: clr,
        padding: EdgeInsets.symmetric(vertical: getH(19)),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getH(12)),
        ),
      ),
      onPressed: callback
    );
  }
}
