import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/widgets_common/applogo_widget.dart';
import 'package:e_mart/widgets_common/bg_widget.dart';
import 'package:e_mart/widgets_common/custom_textfield.dart';
import 'package:e_mart/widgets_common/login_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Get registered at $appname"
                .text
                .fontFamily(bold)
                .white
                .size(18)
                .make(),
            15.heightBox,
            Column(
              children: [
                customTextField(title: name, hint: nameHint),
                customTextField(title: email, hint: emailHint),
                customTextField(title: password, hint: passwordHint),
                customTextField(title: retypePassword, hint: passwordHint),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgetPass.text.color(Colors.purple).size(12).make(),
                    )),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.purple,
                      value: isCheck,
                      onChanged: (newValue) {
                        setState(() {
                          isCheck = newValue;
                        });
                      },
                    ),
                    10.widthBox,
                    Expanded(
                        child: RichText(
                            text: const TextSpan(children: [
                      TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: termsAndCon,
                          style: TextStyle(
                            fontFamily: regular,
                            color: Colors.purple,
                          )),
                      TextSpan(
                          text: " & ",
                          style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: privacyPolicy,
                          style: TextStyle(
                            fontFamily: regular,
                            color: Colors.purple,
                          )),
                    ])))
                  ],
                ),
                10.heightBox,
                loginButton(() {}, isCheck == true ? Colors.purple : Colors.purpleAccent,
                        Colors.white, signup)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    existAcc.text.color(fontGrey).make(),
                    loginText.text.color(Colors.purple).make().onTap(() {
                      Get.back();
                    })
                  ],
                )
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
