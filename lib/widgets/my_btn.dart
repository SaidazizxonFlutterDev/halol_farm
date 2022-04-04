import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/core/constants/size_config.dart';
import 'package:halol_farm/widgets/text/my_text.dart';

class MyButton extends StatelessWidget {
  String txt;
  Color? clr;
  Color? tClr;
  String? assetTxt;
  var callback;
  MyButton(this.txt, this.callback,
      {Key? key, this.clr, this.tClr, this.assetTxt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(assetTxt.toString(), height: getH(25), width: getW(3)),
            Padding(
              padding: EdgeInsets.only(left: getW(15.33)),
              child: MyText(txt, clr: tClr),
            )
          ],
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: clr,
          padding: EdgeInsets.symmetric(vertical: getH(19), horizontal: getW(38)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(getH(12)),
          ),
        ),
        onPressed: callback);
  }
}
