import 'package:lakevista/core/constants/export.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  final _signInFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.w * ScreenPercentage.screenSize_4),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: IntrinsicHeight(
                  child: Form(
                    key: _signInFormKey,
                    child: Column(
                      children: [
                        SizedBox(
                            height: context.h * ScreenPercentage.screenSize_1),
                        Image.asset(ImagesResource.splashIcon,
                            height: context.h * ScreenPercentage.screenSize_40),
                        CustomTextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          hintText: StringsResource.enterEmail,
                          prefixIcon: const Icon(Icons.email_outlined,
                              color: ColorsResource.primaryColor),
                          validator: (email) => Validation.validateEmail(email),
                        ),
                        SizedBox(
                            height: context.h * ScreenPercentage.screenSize_2),
                        CustomTextFormField(
                          controller: _passwordController,
                          hintText: StringsResource.enterPassword,
                          prefixIcon: const Icon(Icons.lock_outline,
                              color: ColorsResource.primaryColor),
                          validator: (password) =>
                              Validation.validatePassword(password),
                        ),
                        SizedBox(
                            height: context.h * ScreenPercentage.screenSize_7),
                        CustomButton(
                          btnText: StringsResource.signIn,
                          onPressed: () {
                            if (_signInFormKey.currentState?.validate() ??
                                true) {
                              context.unFocusKeyboard();
                              Fluttertoast.showToast(
                                  msg: 'SignIn Successfully');
                              Navigator.pushNamedAndRemoveUntil(context,
                                  RouteNames.homeScreen, (route) => false);
                            }
                          },
                        ),
                        const Spacer(),
                        SizedBox(
                            height: context.h * ScreenPercentage.screenSize_2),
                        AuthFooter(
                          text: StringsResource.araYouNewbie,
                          btnText: StringsResource.signUp,
                          onTap: () {},
                        ),
                        SizedBox(
                            height: context.h * ScreenPercentage.screenSize_2),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
