
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
  final _formKey = GlobalKey<FormState>();

  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var nameController=TextEditingController();
  var cpasswordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 90,right: 80,top: 60),
                constraints: BoxConstraints(maxWidth: 512),
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
                    TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value!.length<6) {
                          return 'Please enter a valid name';
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7)),
                        hintText: 'Enter your fullname',
                        hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
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
                      validator: (value) {
                        if (value!.contains('@')) {
                          return null;
                        } else {
                          return 'Please enter a valid email';
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7)),
                        hintText: 'name@company.com',
                        hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
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
                      controller: passwordController,
                      validator: (value) {
                        if (value!.length < 6) {
                          return 'Password must be at least 6 characters';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7)),
                        hintText: 'name@company.com',
                        hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
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
                      controller: cpasswordController,
                      validator: (value) {
                        if (value!.length < 6) {
                          return 'Password must be at least 6 characters';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7)),
                        hintText: 'name@company.com',
                        hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 30),

                    //logup button
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color(0xFF3069FE),
                          borderRadius: BorderRadius.circular(7)
                      ),
                      child: TextButton(
                        onPressed: (){
                          signUp();
                        },
                        child: Text(AppLocalizations.of(context)!.logup,style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                        ),),
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
    var snackBar = SnackBar(
      content: Text('Tizimdan muvaffaqiyatli ro\'yhatdan o\'tildi.'),
    );
    if (_formKey.currentState!.validate()) {
      await Future.delayed(Duration(microseconds: 200)).then((value) =>
          ScaffoldMessenger.of(context).showSnackBar(snackBar));
      Navigator.pop(context);
    }else{
      return;
    }
  }
}
