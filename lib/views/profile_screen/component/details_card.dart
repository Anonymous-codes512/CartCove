import 'package:ecommerce/consts/consts.dart';

Widget detailsCard ({width, String? count, String? title}){
  return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        count!.text.fontFamily(bold).color(darkFontGrey).make(),
        const SizedBox(height: 5),
        title!.text.color(darkFontGrey).make(),
      ]
  ).box.white.rounded.width(width).height(80).margin(const EdgeInsets.symmetric(horizontal: 5)).padding(const EdgeInsets.all(5)).make();
}