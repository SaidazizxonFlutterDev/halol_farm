import 'package:flutter/material.dart';
import 'package:halol_farm/core/constants/color_const.dart';
import 'package:halol_farm/core/constants/size_config.dart';
import 'package:halol_farm/core/constants/size_const.dart';
import 'package:halol_farm/widgets/text/big_text.dart';
import 'package:halol_farm/widgets/text/my_text.dart';
import 'package:pinput/pinput.dart';

class VerificationPage extends StatelessWidget {
  VerificationPage({Key? key}) : super(key: key);

  String phoneNumber = "+998991112233";
  String time = '00:59';
  String code = '1234';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: getH(8), top: getH(70)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BigText("SMS dagi kodni kiriting"),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: getH(8)),
                child: MyText("Kod ushbu raqamga yuborildi:",
                    size: SizeConst.normal),
              ),
              MyText(phoneNumber, size: SizeConst.normal),
              Padding(
                padding: EdgeInsets.only(top: getH(25), bottom: getH(5)),
                child: MyText("Kodni qaytadan yuborish: $time"),
              ),
              Padding(
                padding: EdgeInsets.only(top: getH(8)),
                child: Pinput(
                  onCompleted: (value) {
                    if (value == code) {
                      Navigator.pushNamed(context, '/home_page');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: MyText(
                              "Verifitatoin code is incorrect! Please try again"),
                              backgroundColor: ColorConst.red,
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
