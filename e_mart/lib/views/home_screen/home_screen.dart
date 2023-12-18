import 'package:flutter/material.dart';
import 'package:e_mart/consts/colors.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/views/home_screen/components/featuredbutton.dart';
import 'package:e_mart/widgets_common/home_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                suffixIcon: Icon(Icons.search),
                filled: true,
                fillColor: whiteColor,
                hintText: search,
                hintStyle: TextStyle(color: textfieldGrey),
              ),
            ),
          ),
          10.heightBox,
          Expanded(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: sliderList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(sliderList[index],
                              fit: BoxFit.fitWidth)
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(EdgeInsets.symmetric(horizontal: 8))
                          .make();
                    }),

                10.heightBox,
                //deal button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      2,
                      (index) => homeButtons(
                          context.screenWidth / 2.5,
                          context.screenHeight * 0.15,
                          index == 0 ? icTodayDeal : icFlashDeal,
                          index == 0 ? deal : sale,
                          () {})),
                ),

                //2nd swiper

                10.heightBox,

                VxSwiper.builder(
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount: sliderList.length,
                    itemBuilder: (context, index) {
                      return Image.asset(sliderList[index],
                              fit: BoxFit.fitWidth)
                          .box
                          .rounded
                          .clip(Clip.antiAlias)
                          .margin(EdgeInsets.symmetric(horizontal: 8))
                          .make();
                    }),

                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      3,
                      (index) => homeButtons(
                          context.screenWidth / 3.5,
                          context.screenHeight * 0.15,
                          index == 0
                              ? icTodayDeal
                              : index == 1
                                  ? icFlashDeal
                                  : icCategories,
                          index == 0
                              ? deal
                              : index == 1
                                  ? sale
                                  : categories,
                          () {})),
                ),

                20.heightBox,
                Align(
                  alignment: Alignment.centerLeft,
                  child: categories.text
                      .color(darkFontGrey)
                      .size(18)
                      .fontFamily(semibold)
                      .make(),
                ),
                20.heightBox,

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        3,
                        (index) => Column(
                              children: [
                                featuredButton(cart, sliderList[index]),
                                10.heightBox,
                                featuredButton(top, sliderList[index]),
                              ],
                            )),
                  ),
                ),

                //featured products

                20.heightBox,
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.purple,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      featuredProducts.text.white
                          .fontFamily(bold)
                          .size(18)
                          .make(),
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

                //3rd swiper
                20.heightBox,

                VxSwiper.builder(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                  height: 150,
                  enlargeCenterPage: true,
                  itemCount: sliderList.length,
                  itemBuilder: (context, index) {
                    return Image.asset(sliderList[index],
                            fit: BoxFit.fitWidth)
                        .box
                        .rounded
                        .clip(Clip.antiAlias)
                        .margin(const EdgeInsets.symmetric(horizontal: 8))
                        .make();
                  }
                ),


                //all products section
                20.heightBox,
                
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 300), 
                  itemBuilder: (context,index){
                    return Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
                      children: [
                        Image.asset(slide3,
                            width: 200, height: 150, fit: BoxFit.cover),
                        // height 200
                        const Spacer(),
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
                    .padding(const EdgeInsets.all(12))
                    .make();

                }
                )
              ],
            ),
          ))
        ],
      )),
    );
  }
}
