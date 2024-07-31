import 'package:ecommerce/consts/consts.dart';

Widget button({required VoidCallback onPress, required Color color, required Color textColor, required String name}) {
  return ElevatedButton(
    onPressed: onPress,
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const  EdgeInsets.all(12),
    ),
    child: name.text.color(textColor).fontFamily(bold).make(),
  );
}
