import 'package:ecommerce/views/splash_screen/splash_screen.dart';
import 'package:ecommerce/consts/consts.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    title: appname,
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
      fontFamily: regular,
    ),
    home: const SplashScreen(),
  ));
}
