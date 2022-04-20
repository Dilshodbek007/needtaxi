
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
  var nameController=TextEditingController();
  var confPass=TextEditingController();

  var isPressed=false;

  final _formKeyPass=GlobalKey<FormState>();
  final _formKeyConfPass=GlobalKey<FormState>();
  final _formKeyEmail=GlobalKey<FormState>();
  final _formKeyName=GlobalKey<FormState>();

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
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        controller: scrollController,
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

                  // fullname label
                  Text(
                    AppLocalizations.of(context)!.fullName,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(height: 8),

                  // fulname textfield
                  Form(
                    key: _formKeyName,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value!.length<6) {
                          return 'Please enter a valid name';
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
                  ),
                  SizedBox(height: 20),

                  //email label
                  Text(
                    AppLocalizations.of(context)!.emailAddress,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  SizedBox(height: 8),

                  //email textfield
                  Form(
                    key: _formKeyEmail,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
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
                  Form(
                    key: _formKeyPass,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
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
                        hintText: 'name@company.com',
                        hintStyle:  Theme.of(context).inputDecorationTheme.hintStyle,
                      ),
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
                  Form(
                    key: _formKeyConfPass,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
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
                        hintText: 'name@company.com',
                        hintStyle:  Theme.of(context).inputDecorationTheme.hintStyle,
                      ),
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
                          if(isPressed)CircularProgressIndicator(
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
    );
  }

  Future<void> signUp() async{
    var snackBar = SnackBar(
      content: Text('Tizimdan muvaffaqiyatli ro\'yhatdan o\'tildi.'),
    );
    if (_formKeyEmail.currentState!.validate() && _formKeyName.currentState!.validate() && _formKeyConfPass.currentState!.validate() &&
        _formKeyPass.currentState!.validate()) {
      await Future.delayed(Duration(microseconds: 200)).then((value) =>
          ScaffoldMessenger.of(context).showSnackBar(snackBar));
      Navigator.pop(context);
    }else{
      return;
    }
  }

  bool validPassword(String value){
    String  pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$';
    RegExp regExp = RegExp(pattern);
    return regExp.hasMatch(value);
  }
}


