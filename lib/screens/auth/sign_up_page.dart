import 'package:flutter/material.dart';
import 'package:halol_farm/core/components/form_field_decoration.dart';
import 'package:halol_farm/core/constants/assets_const.dart';
import 'package:halol_farm/core/constants/color_const.dart';
import 'package:halol_farm/core/constants/size_config.dart';
import 'package:halol_farm/widgets/my_btn.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ro'yxatdan o'tish"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: getH(55)),
              child: Form(
                child: Padding(
                  padding: EdgeInsets.all(getH(16)),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: getH(15)),
                        child: TextFormField(
                            decoration: formFieldDecoration(
                                "Type...", "First name")),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: getH(15)),
                        child: TextFormField(
                            decoration: formFieldDecoration(
                                "Type...", 'Last name')),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: getH(15)),
                        child: TextFormField(
                            decoration: formFieldDecoration(
                                "Type...", "password")),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: getH(47), bottom: 12),
                        child: const Text("Ijtimoiy tarmoqlar orqali",
                            textAlign: TextAlign.center),
                      ),
                      MyButton("Google", () {},
                          tClr: ColorConst.textColor,
                          clr: ColorConst.grey,
                          assetTxt: AssetsConst.googleLogo),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: getH(10), right: getW(5)),
                            child: MyButton("Apple", () {},
                                assetTxt: AssetsConst.appleLogo,
                                clr: ColorConst.grey,
                                tClr: ColorConst.textColor),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: getH(10), left: getW(5)),
                            child: MyButton("Facebook", () {},
                                assetTxt: AssetsConst.facebookLogo,
                                clr: ColorConst.grey,
                                tClr: ColorConst.textColor),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(getH(16)),
                        child: MyButton("Keyingisi", () {
                          Navigator.pushNamed(context, '/verif_code');
                        },
                            clr: ColorConst.primary, tClr: ColorConst.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
