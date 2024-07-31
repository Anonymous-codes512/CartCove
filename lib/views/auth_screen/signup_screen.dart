import 'package:ecommerce/consts/consts.dart';
import 'package:ecommerce/controllers/auth_controller.dart';
import 'package:ecommerce/views/home_screen/home.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  var controller = Get.put(AuthController());

  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordConfirmController = TextEditingController();

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
                  "Signup to $appname".text
                      .fontFamily(bold)
                      .white
                      .size(18)
                      .make(),
                  const SizedBox(height: 20.0),
                  Column(children: [
                    customTextField(
                        name: name,
                        hint: nameHint,
                        controller: nameController,
                        isPass: false),
                    customTextField(
                        name: email,
                        hint: emailHint,
                        controller: emailController,
                        isPass: false),
                    customTextField(
                        name: password,
                        hint: passwordHint,
                        controller: passwordConfirmController, isPass: true),
                    customTextField(
                        name: retypePassword,
                        hint: passwordHint,
                        controller: passwordConfirmController, isPass: true),
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: forgetPassword.text.make())),
                    Row(
                      children: [
                        Checkbox(
                            activeColor: redColor,
                            checkColor: whiteColor,
                            value: isCheck,
                            onChanged: (newValue) {
                              setState(() {
                                isCheck = newValue;
                              });
                            }),
                        const SizedBox(width: 10.0),
                        Expanded(
                          child: RichText(
                              text: const TextSpan(children: [
                                TextSpan(
                                    text: "I agree with ",
                                    style: TextStyle(
                                        fontFamily: regular, color: fontGrey)),
                                TextSpan(
                                    text: termAndCondition,
                                    style: TextStyle(
                                        fontFamily: regular, color: redColor)),
                                TextSpan(
                                    text: " & ",
                                    style: TextStyle(
                                        fontFamily: regular, color: fontGrey)),
                                TextSpan(
                                    text: privacyPolicy,
                                    style: TextStyle(
                                        fontFamily: regular, color: redColor)),
                              ])),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    button(
                        onPress: () async {
                          if (isCheck != false) {
                            try {
                              await controller
                                  .signupMethod(
                                  context: context,
                                  email: emailController.text,
                                  password: passwordController.text)
                                  .then((value) {
                                return controller.storeUserData(
                                    email: emailController.text,
                                    password: passwordController.text,
                                    name: nameController.text);
                              }).then((value) {
                                VxToast.show(context, msg: loggedIn);
                                Get.offAll(() => const Home());
                              });
                            } catch (e) {
                              auth.signOut();
                              VxToast.show(context, msg: e.toString());
                            }
                          }
                        },
                        color: isCheck == true ? redColor : lightGrey,
                        name: signUp,
                        textColor: whiteColor)
                        .box
                        .width(context.screenWidth - 50)
                        .make(),
                    const SizedBox(height: 10.0),
                    RichText(
                        text: const TextSpan(children: [
                          TextSpan(
                              text: alreadyHaveAnAccount,
                              style: TextStyle(
                                  fontFamily: bold, color: fontGrey)),
                          TextSpan(
                              text: login,
                              style: TextStyle(
                                  fontFamily: bold, color: redColor)),
                        ])).onTap(() {
                      Get.back();
                    })
                  ])
                      .box
                      .white
                      .rounded
                      .padding(const EdgeInsets.all(16))
                      .width(context.screenWidth - 70)
                      .shadowSm
                      .make(),
                ],
              ),
            ),
          ),
        ));
  }
}
