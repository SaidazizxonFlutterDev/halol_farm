import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:halol_farm/core/constants/assets_const.dart';
import 'package:halol_farm/core/constants/color_const.dart';
import 'package:halol_farm/core/constants/size_config.dart';
import 'package:halol_farm/core/constants/size_const.dart';
import 'package:halol_farm/widgets/text/my_text.dart';

class SignInOrSignUp extends StatelessWidget {
  const SignInOrSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.invisible,
        elevation: 0,
        actions: [
          TextButton(
            child: MyText("Skip", clr: ColorConst.white, size: SizeConst.normal),
            onPressed: () {
              Navigator.pushNamed(context, '/home_page');
            },
          ),
        ],
      ),
      backgroundColor: ColorConst.primary,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AssetsConst.logo,
                  height: getH(60), width: getW(200)),
            ],
          ),
        ],
      ),
    );
  }
}
