import 'package:ecommerce/consts/consts.dart';

Widget homeScreenButton({height, width, String? title, icon, onPress}){
  return Column(
mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon, width: 25),
      const SizedBox(height: 5),
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ]).box.rounded.white.size(width, height).shadowSm.make();
}