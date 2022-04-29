import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:needtaxi/Source%20Files/intro/intro_sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  static String id = 'sign_in';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  bool isPressed = false;

  final _formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scrollController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Form(
        key: _formKey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(70),
              constraints: BoxConstraints.expand(
                width: 640
              ),
              color: Colors.white,
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.login,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(height: 40),
                    Text(
                      AppLocalizations.of(context)!.emailAddress,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    SizedBox(height: 8),

                    //email textformfield
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: emailController,
                      validator: (input) =>
                          input!.isValidEmail() ? null : "Check your email",
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: Theme.of(context)
                            .inputDecorationTheme
                            .contentPadding,
                        border: Theme.of(context).inputDecorationTheme.border,
                        hintText: 'name@company.com',
                        hintStyle:
                            Theme.of(context).inputDecorationTheme.hintStyle,
                      ),
                    ),
                    SizedBox(height: 20),

                    //password label
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.password,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            AppLocalizations.of(context)!.forgotPassword,
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue.shade800,
                                fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 8),

                    //password textformfield
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      controller: passwordController,
                      validator: (value) {
                        if (value!.length <= 8) {
                          return 'Password must be at least 8 characters';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding: Theme.of(context)
                            .inputDecorationTheme
                            .contentPadding,
                        border: Theme.of(context).inputDecorationTheme.border,
                        hintText: 'Enter your password',
                        hintStyle:
                            Theme.of(context).inputDecorationTheme.hintStyle,
                      ),
                    ),
                    SizedBox(height: 20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size(40, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              alignment: Alignment.centerLeft),
                          onPressed: () {
                            setState(() {
                              if (isPressed == false) {
                                isPressed = true;
                              } else {
                                isPressed = false;
                              }
                            });
                          },
                          child: isPressed == false
                              ? Icon(
                                  Icons.check_box_outline_blank,
                                  size: 20,
                                  color: Colors.grey[500],
                                )
                              : Icon(
                                  Icons.check_box,
                                  color: Color(0xFF3069FE),
                                  size: 20,
                                ),
                        ),
                        Text(AppLocalizations.of(context)!.rememberInfo),
                      ],
                    ),
                    SizedBox(height: 20),

                    //sign in button
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFF3069FE),
                          borderRadius: BorderRadius.circular(7)),
                      child: TextButton(
                        onPressed: () {
                          signIn();
                        },
                        child: Text(
                          AppLocalizations.of(context)!.login,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          AppLocalizations.of(context)!.notMember,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 6),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => SignUp(),
                                settings: RouteSettings(name: '/signup'),
                              ),
                            );
                          },
                          child: Text(
                            AppLocalizations.of(context)!.logup,
                            style: TextStyle(
                                color: Color(0xFF5785FE),
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            if (MediaQuery.of(context).size.width > 1200)
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.grey[200],
                  padding: EdgeInsets.all(60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.slogan,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                            fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '- Need Taxi',
                        style: TextStyle(color: Colors.grey),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.camera_alt_rounded,
                            size: 50,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }

  Future<void> signIn() async {
    var snackBar = SnackBar(
      content: Text('Tizimga muvaffaqiyatli kirildi.'),
    );
    if (_formKey.currentState!.validate()) {
      await Future.delayed(Duration(microseconds: 200)).then(
          (value) => ScaffoldMessenger.of(context).showSnackBar(snackBar));
      Navigator.pop(context, '/');
    }
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
