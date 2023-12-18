import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/views/category_screen/category_details.dart';
import 'package:e_mart/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        appBar: AppBar(
          title: categories.text.fontFamily(bold).make(),
        ),
        body: Container(
          padding: EdgeInsets.all(12),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 8, mainAxisExtent: 200, crossAxisSpacing: 8), 
            itemBuilder: (context, index){
              return Column(
                children: [
                  Image.asset(categoryImages[index], 
                  height: 120,
                  width: 200,
                  fit: BoxFit.cover),
                  10.heightBox,
                  categoryList[index].text.color(darkFontGrey).align(TextAlign.center).make(),
                ],
              ).box.white.roundedSM.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
                Get.to(()=> CategoryDetails(title: categoryList[index]));
              });
            }),
        ),
      )
    );
  }
}