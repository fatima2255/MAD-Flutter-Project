import 'package:e_mart/consts/consts.dart';

Widget bgWidget(Widget? child) {
  return Container(
    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(bg_login), fit: BoxFit.fill)),
    child: child,
  );
}