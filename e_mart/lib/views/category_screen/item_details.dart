import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/widgets_common/login_button.dart';

import '../../consts/consts.dart';

class ItemDetails extends StatelessWidget {
  final String? title;
  const ItemDetails({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_outlined))
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8),
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VxSwiper.builder(
                    autoPlay: true,
                    height: 350,
                    itemCount: 3,
                    aspectRatio: 16 / 9,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        icBakery,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      );
                    }),

                10.heightBox,
                //title and details section

                title!.text
                    .size(16)
                    .color(darkFontGrey)
                    .fontFamily(semibold)
                    .make(),

                10.heightBox,
                VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: lightGolden,
                    count: 5,
                    size: 25,
                    stepInt: true),

                10.heightBox,
                "RS. 30,000"
                    .text
                    .color(Colors.purple)
                    .fontFamily(bold)
                    .size(18)
                    .make(),

                10.heightBox,
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Seller".text.white.fontFamily(semibold).make(),
                        5.heightBox,
                        "To house brands"
                            .text
                            .fontFamily(semibold)
                            .color(darkFontGrey)
                            .size(16)
                            .make(),
                      ],
                    )),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.message_rounded,
                        color: darkFontGrey,
                      ),
                    ),
                  ],
                )
                    .box
                    .height(60)
                    .padding(const EdgeInsets.symmetric(horizontal: 16))
                    .color(textfieldGrey)
                    .make(),

                //color selection
                20.heightBox,
                Column(
                  children: [
                    // Row(
                    //   children: [
                    //     SizedBox(
                    //       width: 100,
                    //       child: "Color: ".text.color(textfieldGrey).make(),
                    //     ),
                    //     Row(
                    //       children: List.generate(
                    //           3,
                    //           (index) => VxBox()
                    //               .size(40, 40)
                    //               .roundedFull
                    //               .color(Vx.randomOpaqueColor)
                    //               .margin(
                    //                 const EdgeInsets.symmetric(horizontal: 4))
                    //               .make()),
                    //     )
                    //   ],
                    // ).box.padding(const EdgeInsets.all(8)).make(),

                    //quantity row
                    Row(children: [
                        SizedBox(
                          width: 100,
                          child: "Quantity: ".text.color(textfieldGrey).make(),
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
                            "0".text.size(16).color(darkFontGrey).fontFamily(bold).make(),
                            IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
                            10.widthBox,
                            "(0 available)".text.color(textfieldGrey).make(),
                          ],
                        ),
                      ],).box.padding(const EdgeInsets.all(8)).make(),

                      //total row

                      Row(children: [
                        SizedBox(
                          width: 100,
                          child: "Total: ".text.color(textfieldGrey).make(),
                        ),

                        "RS 0.00".text.color(Colors.purple).size(16).fontFamily(bold).make(),
                        
                      ],).box.padding(const EdgeInsets.all(8)).make()
                  ],
                ).box.white.shadowSm.make(),

                //description section 

                10.heightBox,
                "Description".text.color(darkFontGrey).fontFamily(semibold).make(),
                10.heightBox,
                "This is a dummy item and dummy description here..".text.color(darkFontGrey).make(),

                10.heightBox,

                ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(
                  itemDetailsList.length, 
                  (index) => ListTile(
                    title: itemDetailsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                    trailing: const Icon(Icons.arrow_forward),
                  )),
                ),

                20.heightBox,
                ProductsLike.text.fontFamily(bold).size(16).color(darkFontGrey).make(),

                10.heightBox,
                SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  6,
                  (index) => Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Image.asset(slide3,
                              width: 130, fit: BoxFit.cover),
                          10.heightBox,
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
                          .margin(const EdgeInsets.symmetric(
                              horizontal: 6))
                          .roundedSM
                          .padding(const EdgeInsets.all(8))
                          .make()),
                        ),
                      )


              ],
            ),
            ),
          )),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: loginButton(() {}, Colors.purple, whiteColor, "Add to cart"),
          )
        ],
      ),
    );
  }
}
