import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hyperzod_client_app/components/Input.dart';
import 'package:hyperzod_client_app/components/lable.dart';
import 'package:line_icons/line_icons.dart';
import '../helpers/constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 64,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        borderRadius: KRadius, color: KLightBackground),
                    child: Icon(Icons.arrow_back_ios_sharp),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Login",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(fontSize: 32, height: 1.2),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Enter Your mobile number or email , You will get Otp on this.",
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: KTextPrimary.withOpacity(0.6),
                      height: 1.2,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 32,
                ),
                Input(title: "Enter Your Email/mobile number."),
                SizedBox(
                  height: 32,
                ),
                Container(
                  child: ButtonTheme(
                    padding: EdgeInsets.symmetric(vertical: 18),
                    minWidth: double.infinity,
                    child: RaisedButton(
                      elevation: 0,
                      onPressed: () {
                        Navigator.of(context).pushNamed("otp");
                      },
                      color: Theme.of(context).primaryColor,
                      textColor: Theme.of(context).accentColor,
                      child: Text("Send OTP",
                          style: Theme.of(context).textTheme.headline2.copyWith(
                              color: Theme.of(context).backgroundColor,
                              height: 1)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                    child: Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            text: 'By signing in you\'r agree to our ',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(
                                    color: KTextPrimary.withOpacity(0.6),
                                    height: 1.2,
                                    fontWeight: FontWeight.normal),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Term of Use',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3
                                      .copyWith(
                                          color: Theme.of(context)
                                              .accentColor
                                              .withOpacity(0.6),
                                          height: 1.2,
                                          fontWeight: FontWeight.normal),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    }),
                              TextSpan(
                                  text: ' and ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3
                                      .copyWith(
                                          color: KTextPrimary.withOpacity(0.6),
                                          height: 1.2,
                                          fontWeight: FontWeight.normal),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    }),
                              TextSpan(
                                  text: 'Privacy Policy',
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline3
                                      .copyWith(
                                          color: Theme.of(context)
                                              .accentColor
                                              .withOpacity(0.6),
                                          height: 1.2,
                                          fontWeight: FontWeight.normal),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      // navigate to desired screen
                                    }),
                            ]),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
