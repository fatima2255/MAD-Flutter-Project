import 'package:e_mart/consts/consts.dart';

Widget applogoWidget() {
  //using velocity here
  //return Image.asset(applogo);

  return Image.asset(applogo).box.white.size(77,77).padding(const EdgeInsets.all(8)).rounded.make();
}