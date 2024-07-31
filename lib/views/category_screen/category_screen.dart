import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/views/category_screen/category_details.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return backgroundScreen(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: whiteColor),
        title: category.text.white.fontFamily(bold).make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                mainAxisExtent: 200,
                crossAxisSpacing: 5),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(categoriesImages[index], height: 120, width: 200,fit: BoxFit.cover),
                  const SizedBox(height: 10),
                  categoriesList[index].text.color(darkFontGrey).align(TextAlign.center).make()
                ],
              )
                  .box
                  .white
                  .rounded
                  .clip(Clip.antiAlias)
                  .outerShadowSm
                  .margin(const EdgeInsets.symmetric(horizontal: 5))
                  .make().onTap((){
                Get.to(()=> CategoryDetails(title: categoriesList[index]));
              });
            }),
      ),
    ));
  }
}
