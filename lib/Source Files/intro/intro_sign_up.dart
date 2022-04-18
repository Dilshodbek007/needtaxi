
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

import 'intro_sign_in.dart';

class IntroSignUp extends StatefulWidget {
  const IntroSignUp({Key? key}) : super(key: key);
  static String id='sign_up';
  @override
  State<IntroSignUp> createState() => _IntroSignUpState();
}

class _IntroSignUpState extends State<IntroSignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: InputBorder.none,
                          hintText: AppLocalizations.of(context)!.enterName,
                          hintStyle: TextStyle(fontSize: 12, color: Colors.grey)),
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
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: InputBorder.none,
                          hintText: 'name@company.com',
                          hintStyle: TextStyle(fontSize: 12, color: Colors.grey)),
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

                  //password
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: InputBorder.none,
                          hintText: AppLocalizations.of(context)!.enterName,
                          hintStyle: TextStyle(fontSize: 12, color: Colors.grey)),
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
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                          border: InputBorder.none,
                          hintText: AppLocalizations.of(context)!.confirmPassword,
                          hintStyle: TextStyle(fontSize: 12, color: Colors.grey)),
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
                      onPressed: (){},
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
                            builder: (context)=>IntroSignIn(),
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
                padding: EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppLocalizations.of(context)!.slogan,style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
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
}
