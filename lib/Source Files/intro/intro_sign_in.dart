import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:needtaxi/Source%20Files/intro/intro_sign_up.dart';


class IntroSignIn extends StatefulWidget {
  const IntroSignIn({Key? key}) : super(key: key);
  static String id='sign_in';

  @override
  State<IntroSignIn> createState() => _IntroSignInState();
}

class _IntroSignInState extends State<IntroSignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.only(left: 90,right: 80,top: 60),
                color: Colors.white,
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
                        Text(
                          AppLocalizations.of(context)!.forgotPassword,
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue.shade800,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10),
                            border: InputBorder.none,
                            hintText: 'Placeholder',
                            hintStyle: TextStyle(fontSize: 12, color: Colors.grey)),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.check_box_outline_blank,
                            size: 20,
                          ),
                        ),
                        SizedBox(width: 7),
                        Text(AppLocalizations.of(context)!.rememberInfo),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade800,
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: TextButton(
                        onPressed: (){},
                        child: Text(AppLocalizations.of(context)!.login,style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,

                        ),),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(AppLocalizations.of(context)!.notMember,style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),),
                        SizedBox(width: 6),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context)=>IntroSignUp(),
                              settings: RouteSettings(name: '/signup'),
                            ),);
                          },
                          child: Text(AppLocalizations.of(context)!.logup,
                          style: TextStyle(
                            color: Colors.blue.shade800,
                            fontWeight: FontWeight.w400,
                            fontSize: 14
                          ),),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            if(MediaQuery.of(context).size.width>800)
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
