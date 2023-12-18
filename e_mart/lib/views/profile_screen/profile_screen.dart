import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/lists.dart';
import 'package:e_mart/views/profile_screen/components/details_card.dart';
import 'package:e_mart/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            //edit profile button
            Padding(padding: const EdgeInsets.all(8.0),
            child: const Align(alignment: Alignment.topRight,child: Icon(Icons.edit, color: Colors.white,)).onTap(() { 
              // incase i need to add on tap functionality
            }),),

            Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Image.asset(slide3, width: 100, fit: BoxFit.cover)
                    .box
                    .roundedFull
                    .clip(Clip.antiAlias)
                    .make(),
                10.widthBox,
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Customer".text.fontFamily(semibold).white.make(),
                    "customer@example.com".text.white.make(),
                  ],
                )),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                      color: Colors.white,
                    )
                  ),
                  onPressed: (){}, 
                  child: logout.text.fontFamily(semibold).white.make())
              ],
            ),),


            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                detailsCard(width: context.screenWidth / 3.4, count: "00", title: "In your cart"),
                detailsCard(width: context.screenWidth / 3.4, count: "18", title: "Wishlist Items"),
                detailsCard(width: context.screenWidth / 3.4, count: "2", title: "My Orders"),
              ],
            ),


            ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index){
                return const Divider(color: lightGrey);
              },
              itemCount: profileButtonsList.length,
              itemBuilder: (BuildContext context, int index){
                return ListTile(
                  leading: Image.asset(profileButtonsIcons[index],
                  width: 20,),
                  title: profileButtonsList[index].text.fontFamily(semibold).color(darkFontGrey).make(),
                );
              },
            ).box.white.rounded.margin(const EdgeInsets.all(12)).padding(const EdgeInsets.symmetric(horizontal: 16)).shadowSm.make().box.color(Colors.purple).make(),
          ],
        ),
      ),
    ));
  }
}
