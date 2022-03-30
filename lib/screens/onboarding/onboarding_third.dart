import 'package:flutter/material.dart';
import 'package:halol_farm/core/components/my_decoration.dart';
import 'package:halol_farm/core/constants/assets_const.dart';
import 'package:halol_farm/core/constants/color_const.dart';
import 'package:halol_farm/core/constants/size_config.dart';
import 'package:halol_farm/core/constants/size_const.dart';
import 'package:halol_farm/core/constants/weight_const.dart';
import 'package:halol_farm/widgets/mini_dot.dart';
import 'package:halol_farm/widgets/my_sized_box.dart';
import 'package:halol_farm/widgets/text/my_text.dart';

class OnboardingThird extends StatelessWidget {
  const OnboardingThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: getH(16)),
              width: getW(375),
              height: getH(400),
              decoration: myDecorartion(botL: getH(40)),
              child:
                  Image.asset(AssetsConst.onboardingFirst, fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.all(getH(16)),
              child: MyText("Sevimli hayvonlaringizni onlayn sotib oling.",
                  weight: WeightConst.bold, size: SizeConst.extraLarge),
            ),
            Padding(
              padding: EdgeInsets.all(getH(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  miniDot(isActive: false),
                  MySizedBox.w(getW(8)),
                  miniDot(isActive: false),
                  MySizedBox.w(getW(8)),
                  miniDot(isActive: true),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(getH(16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    child: MyText("KEYINGISI"),
                    style: ElevatedButton.styleFrom(
                      primary: ColorConst.primary,
                      padding: EdgeInsets.symmetric(vertical: getH(16)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(getH(12)),
                      ),
                    ),
                     onPressed: () {
                       Navigator.pushReplacementNamed(context, '/signIn_or_singUp');
                     },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
