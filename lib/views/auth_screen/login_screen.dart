import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/views/home_screen/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return backgroundScreen(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                (context.screenHeight * 0.1).heightBox,
                appLogo(),
                const SizedBox(height: 10),
                "Login to $appname".text.fontFamily(bold).white.size(18).make(),
                const SizedBox(height: 20.0),
                Column(
                  children: [
                    customTextField(name: email, hint: emailHint,  isPass: false),
                    customTextField(name: password, hint: passwordHint, isPass: true),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: (){},
                        child: forgetPassword.text.make(),
                      ),
                    ),
                    const SizedBox(height: 5),
                    button(onPress:(){Get.to(() => const Home());}, color: redColor, name:login, textColor: whiteColor).box.width(context.screenWidth - 50).make(),
                    const SizedBox(height: 5),
                    createNewAccount.text.color(fontGrey).make(),
                    const SizedBox(height: 5),
                    button(onPress:(){Get.to(() => const SignupScreen());}, color: lightGolden, name:signUp, textColor: redColor).box.width(context.screenWidth - 50).make(),
                    const SizedBox(height: 10.0),
                    loginWith.text.color(fontGrey).make(),
                    const SizedBox(height: 7.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: lightGrey,
                          radius: 25,
                          child: Image.asset(socialIconList[index], width: 30),
                        ),
                      )),
                    )
                  ]).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
              ],
            ),
          ),
        ),
      )
    );
  }
}
