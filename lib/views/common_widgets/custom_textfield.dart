import 'package:ecommerce/consts/consts.dart';

Widget customTextField({String? name, String? hint, controller, isPass}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      name!.text.color(redColor).fontFamily(semibold).size(16).make(),
      const SizedBox(height: 5),
      TextFormField(
        obscureText: isPass,
        controller: controller,
        decoration:  InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey,
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border:const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)), borderSide: BorderSide.none),
          focusedBorder:const OutlineInputBorder(borderSide: BorderSide(color: redColor)),
        ),
      ),
      const SizedBox(height: 5.0)
    ],
  );
}