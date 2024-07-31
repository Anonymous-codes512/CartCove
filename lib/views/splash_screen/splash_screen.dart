import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/views/auth_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen(){
    Future.delayed(const Duration(seconds : 2), (){
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState(){
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg, width: 300),
            ),
            const SizedBox(height: 100.0),
            appLogo(),
            appname.text.fontFamily(bold).size(22).white.make(),
            const SizedBox(height: 5),
            appversion.text.white.make(),
            const Spacer(),
            credits.text.white.fontFamily(regular).make(),
            const SizedBox(height: 30.0)
          ],
        ),
      ),
    );
  }
}
