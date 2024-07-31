import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/views/category_screen/item_details.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;

  const CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return backgroundScreen(
      child: Scaffold(
          appBar: AppBar(title: title!
              .text
              .fontFamily(bold)
              .white
              .make(), iconTheme: const IconThemeData(color: whiteColor)),
          body: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
                children: [
                SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
                children: List.generate(6, (index) =>
                    "Baby Clothing".text
                        .size(12)
                        .color(darkFontGrey)
                        .fontFamily(bold)
                        .makeCentered()
                        .box
                        .white
                        .size(125, 50)
                        .margin(const EdgeInsets.symmetric(horizontal: 5))
                        .rounded
                        .make())
            ),
          ),
          const SizedBox(height: 20),
          Expanded(child: GridView.builder(
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  mainAxisExtent: 250,
                  crossAxisSpacing: 8),
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                        imgP5, height: 150, width: 200, fit: BoxFit.cover),
                    const SizedBox(height: 10),
                    "LapTop 4GB/64Gb"
                        .text
                        .fontFamily(semibold)
                        .color(darkFontGrey)
                        .make(),
                    const SizedBox(height: 10),
                    "\$600"
                        .text
                        .fontFamily(bold)
                        .color(redColor)
                        .size(16)
                        .make(),
                  ],
                )
                    .box
                    .white
                    .rounded
                    .clip(Clip.antiAlias)
                    .outerShadowSm.padding(const EdgeInsets.symmetric(horizontal: 12))
                    .margin(const EdgeInsets.symmetric(horizontal: 5))
                    .make().onTap((){
                      Get.to(() => const ItemDetails(title: "Dummy"));
                });
              }),
          )
      ],
    ),)
    ,
    )
    );
  }
}
