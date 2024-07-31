import 'package:ecommerce/consts/consts.dart';

Widget featureButton({String? title, icon }){
  return Row(
    children: [
      Image.asset(icon, width: 60, fit: BoxFit.fill),
      const SizedBox(width: 10),
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.width(200).margin(const EdgeInsets.symmetric(horizontal: 5)).white.padding(const EdgeInsets.symmetric(horizontal: 5)).roundedSM.outerShadowSm.make();
}