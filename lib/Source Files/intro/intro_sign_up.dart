
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

import 'intro_sign_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static String id='sign_up';
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  var emailController=TextEditingController();
  var pass=TextEditingController();
  var firstname=TextEditingController();
  var confPass=TextEditingController();
  var lastname=TextEditingController();

  var isPressed=false;

  final _formKey=GlobalKey<FormState>();


  var scrollController=ScrollController();




  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    emailController.dispose();
    pass.dispose();
    confPass.dispose();
    firstname.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        controller: scrollController,
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (){},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(50),
                constraints: BoxConstraints(maxWidth: 640),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.logup,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(height: 40),

                    // firstname label
                    Text(
                      AppLocalizations.of(context)!.firstName,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    SizedBox(height: 8),

                    // firstname textfield
                    TextFormField(
                      controller: firstname,
                      validator: (value) {
                        if (value!.length<6) {
                          return 'Please enter your firstname';
                        }
                      },
                      decoration: InputDecoration(
                        focusedErrorBorder: Theme.of(context).inputDecorationTheme.focusedErrorBorder,
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7)),
                        hintText: 'Enter your firstname',
                        hintStyle:  Theme.of(context).inputDecorationTheme.hintStyle,
                      ),
                    ),
                    SizedBox(height: 20),

                    // lastname label
                    Text(
                      AppLocalizations.of(context)!.lastName,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    SizedBox(height: 8),

                    // lastname textfield
                    TextFormField(
                      controller: lastname,
                      validator: (value) {
                        if (value!.length<6) {
                          return 'Please enter your lastname';
                        }
                      },
                      decoration: InputDecoration(
                        focusedErrorBorder: Theme.of(context).inputDecorationTheme.focusedErrorBorder,
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7)),
                        hintText: 'Enter your fullname',
                        hintStyle:  Theme.of(context).inputDecorationTheme.hintStyle,
                      ),
                    ),
                    SizedBox(height: 20),

                    //email label
                    Text(
                      AppLocalizations.of(context)!.emailAddress,
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    SizedBox(height: 8),

                    //email textfield
                    TextFormField(
                      controller: emailController,
                      validator:  (input) => input!.isValidEmail() ? null : "Check your email",
                      decoration: InputDecoration(
                        focusedErrorBorder: Theme.of(context).inputDecorationTheme.focusedErrorBorder,
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7)),
                        hintText: 'name@company.com',
                        hintStyle:  Theme.of(context).inputDecorationTheme.hintStyle,
                      ),
                    ),
                    SizedBox(height: 20),

                    //password label
                    Text(
                      AppLocalizations.of(context)!.password,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),

                    //password textformfield
                    TextFormField(
                      controller: pass,
                      validator: (value) {
                        if(validPassword(value!)){
                          return null;
                        }else{
                          return 'Please enter a valid password';
                        }
                      },
                      onChanged: (input){

                      },
                      decoration: InputDecoration(
                        focusedErrorBorder: Theme.of(context).inputDecorationTheme.focusedErrorBorder,
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7)),
                        hintText: 'Enter your password',
                        hintStyle:  Theme.of(context).inputDecorationTheme.hintStyle,
                      ),
                    ),
                    SizedBox(height: 20),

                    //confirm password label
                    Text(
                      AppLocalizations.of(context)!.confirmPassword,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 8),

                    //confirm password textfield
                    TextFormField(
                      controller: confPass,
                      validator: (value) {
                        if (confPass.text.isNotEmpty) {
                          if(confPass.text!=pass.text) {
                            return 'Not Match';
                          }else{
                            return null;
                          }
                        } else {
                          return 'Empty';
                        }
                      },
                      decoration: InputDecoration(
                        focusedErrorBorder: Theme.of(context).inputDecorationTheme.focusedErrorBorder,
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7)),
                        hintText: 'Confirm your password',
                        hintStyle:  Theme.of(context).inputDecorationTheme.hintStyle,
                      ),
                    ),
                    SizedBox(height: 30),

                    //sign up button
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFF3069FE),
                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: TextButton(
                        onPressed:(){
                          setState(() {
                            isPressed=true;
                          });
                         Future.delayed(Duration(
                           seconds: 2
                         )).then((value) => signUp());
                        },
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Text(AppLocalizations.of(context)!.logup,style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),),
                            if(isPressed==true && _formKey.currentState!.validate())CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),


                    Row(
                      children: [
                        Text(AppLocalizations.of(context)!.alreadyMember,style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),),
                        SizedBox(width: 6),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context)=>SignIn(),
                              settings: RouteSettings(name: '/signin'),
                            ),);
                          },
                          child: Text(AppLocalizations.of(context)!.login,
                            style: TextStyle(
                                color: Color(0xFF2F69FE),
                                fontWeight: FontWeight.w400,
                                fontSize: 14
                            ),),
                        )
                      ],
                    )
                  ],
                ),
              ),
              if(MediaQuery.of(context).size.width>1200)
              Flexible(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.grey.withOpacity(0.2),
                  padding: EdgeInsets.all(60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppLocalizations.of(context)!.slogan,style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.7),
                        fontSize: 18
                      ),),
                      SizedBox(height: 5),
                      Text('- Need Taxi',style: TextStyle(
                        color: Colors.grey
                      ),),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                            child: Icon(Icons.camera_alt_rounded,size: 50,color: Colors.grey,)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> signUp() async{
    var snackBar = const SnackBar(
      content: Text('Tizimdan muvaffaqiyatli ro\'yhatdan o\'tildi.'),
    );
          if(_formKey.currentState!.validate()) {
      await Future.delayed(const Duration(microseconds: 200)).then((value) =>
          ScaffoldMessenger.of(context).showSnackBar(snackBar));
      Navigator.pop(context);
    }
  }

  bool validPassword(String value){
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }
}


