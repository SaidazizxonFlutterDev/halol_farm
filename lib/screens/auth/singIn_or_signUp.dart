import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/core/constants/assets_const.dart';
import 'package:halol_farm/core/constants/color_const.dart';
import 'package:halol_farm/core/constants/size_config.dart';
import 'package:halol_farm/core/constants/size_const.dart';
import 'package:halol_farm/core/constants/weight_const.dart';
import 'package:halol_farm/widgets/my_btn.dart';
import 'package:halol_farm/widgets/my_text_button.dart';
import 'package:halol_farm/widgets/text/my_text.dart';

class SignInOrSignUp extends StatelessWidget {
  SignInOrSignUp({Key? key}) : super(key: key);

  String purpose =
      "Xuddi 'My Tom Cat' dagidek. Faqat haqiqiy hayvolarni. Maqsad: musulmon aholini o'zi ishonadigan halol go'shit bilan ta'minlash";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.invisible,
        elevation: 0,
        actions: [
          myTextButton("Skip", ColorConst.white, SizeConst.normal, () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/home_page', (route) => false);
          })
        ],
      ),
      backgroundColor: ColorConst.primary,
      body: Padding(
        padding: EdgeInsets.all(getH(16)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: getH(65)),
                  child: SvgPicture.asset(AssetsConst.logo,
                      height: getH(60), width: getW(200)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(bottom: getH(16)),
              child: MyText("Chorva hayvonlarini onlayn boqish",
                  weight: WeightConst.bold,
                  clr: ColorConst.white,
                  size: SizeConst.doubleExtraLarge),
            ),
            MyText(purpose, clr: ColorConst.grey, size: SizeConst.larger),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: getH(135), bottom: getH(35)),
                  child: MyButton("Ro'yxatdan o'tish",
                      () => Navigator.pushNamedAndRemoveUntil(context, 'sign_up', (route) => false),
                      clr: ColorConst.white, tClr: ColorConst.textColor),
                ),
                myTextButton(
                    "Akkauntga kirish", ColorConst.white, SizeConst.larger, () {
                  Navigator.pushReplacementNamed(context, '/sign_in');
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
