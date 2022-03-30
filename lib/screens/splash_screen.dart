import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/core/constants/assets_const.dart';
import 'package:halol_farm/core/constants/color_const.dart';
import 'package:halol_farm/core/constants/size_config.dart';
import 'package:halol_farm/widgets/my_sized_box.dart';
import 'package:halol_farm/widgets/text/big_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Navigator.pushReplacementNamed(context, '/onboarding_first'));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ColorConst.primary,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FadeInRightBig(
              child: SvgPicture.asset(AssetsConst.mainLogo,
                  color: ColorConst.yellow, height: getH(38), width: getW(31)),
            ),
            MySizedBox.w(getW(11)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInLeftBig(child: BigText(" HALAL", clr: ColorConst.white)),
                FadeInLeftBig(child: BigText("FARM", clr: ColorConst.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
