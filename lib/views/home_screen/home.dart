import 'package:ecommerce/consts/consts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());

    var navBarItems = [
      BottomNavigationBarItem(
          icon: Image.asset(icHome, width: 25), label: home),
      BottomNavigationBarItem(
          icon: Image.asset(icCategories, width: 25), label: category),
      BottomNavigationBarItem(
          icon: Image.asset(icCart, width: 25), label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(icProfile, width: 25), label: account)
    ];

    var navBody =[
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen()
    ];

    return Scaffold(
        body: Column(
          children: [
            Obx(() => Expanded(child: navBody.elementAt(controller.currentNavIndex.value))),
          ],
        ),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              currentIndex: controller.currentNavIndex.value,
              selectedItemColor: redColor,
              type: BottomNavigationBarType.fixed,
              backgroundColor: whiteColor,
              selectedLabelStyle: const TextStyle(fontFamily: semibold),
              items: navBarItems,
              onTap: (value) {
                controller.currentNavIndex.value = value;
              },
            )));
  }
}
