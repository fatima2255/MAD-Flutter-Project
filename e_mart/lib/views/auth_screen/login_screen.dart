
import 'package:get/get.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/views/auth_screen/signup.dart';
import 'package:e_mart/views/home_screen/home.dart';
import 'package:e_mart/widgets_common/applogo_widget.dart';
import 'package:e_mart/widgets_common/bg_widget.dart';
import 'package:e_mart/widgets_common/custom_textfield.dart';
import 'package:e_mart/widgets_common/login_button.dart';

class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

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
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Column(
              children: [
                customTextField(title: email, hint: emailHint),
                customTextField(title: password, hint: passwordHint),
                Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgetPass.text.color(Colors.purple).size(12).make(),
                    )),
                10.heightBox,
                loginButton(() {
                  Get.to(() => const Home());
                }, Colors.purple, Colors.white, loginText)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                10.heightBox,
                loginButton(() {
                   Get.to(() => SignupScreen());
                },lightGolden, Colors.purple, signup)
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      3,
                      (index) => Padding(padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(
                              socialIconList[index],
                              width: 30,),
                          ),)
                      ),
                ),
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
