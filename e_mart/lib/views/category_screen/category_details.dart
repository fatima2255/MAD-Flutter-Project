import 'package:e_mart/views/category_screen/item_details.dart';
import 'package:e_mart/widgets_common/bg_widget.dart';
import 'package:get/get.dart';

import '../../consts/consts.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    6,
                    (index) => "Tea"
                        .text
                        .size(12)
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .makeCentered()
                        .box
                        .roundedSM
                        .white
                        .size(120, 60)
                        .margin(const EdgeInsets.symmetric(horizontal: 4))
                        .make()),
              ),
            ),

            //items container
            20.heightBox,

            Expanded(child: Container(
              color: lightGrey,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250, mainAxisSpacing: 8, crossAxisSpacing: 8), 
                itemBuilder: (context, index){
                  return Column(
                      crossAxisAlignment:
                        CrossAxisAlignment.start,
                      children: [
                        Image.asset(slide3,
                          width: 200, height: 150, fit: BoxFit.cover),
                        // height 200
                        "Slide "
                          .text
                          .fontFamily(semibold)
                          .color(darkFontGrey)
                          .make(),
                        10.heightBox,
                        "Rs. 1500"
                          .text
                          .color(Colors.purple)
                          .fontFamily(bold)
                          .size(16)
                          .make(),
                        ],
                      )
                      .box
                      .white
                      .margin(const EdgeInsets.symmetric(horizontal: 6))
                      .outerShadowSm
                      .roundedSM
                      .padding(const EdgeInsets.all(12))
                      .make()
                      .onTap(() {
                        Get.to(() => const ItemDetails(title: "Dummy title"));
                      });
                      
                }
                ),
            )) 
          ],
        ),
      ),
    ));
  }
}
