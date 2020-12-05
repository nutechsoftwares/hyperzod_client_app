import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hyperzod_client_app/components/Input.dart';
import 'package:hyperzod_client_app/components/lable.dart';
import 'package:line_icons/line_icons.dart';
import '../helpers/constants.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtp extends StatefulWidget {
  @override
  _VerifyOtpState createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
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
                  "Verify OTP ",
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(fontSize: 32, height: 1.2),
                  textAlign: TextAlign.left,
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                          text: 'Enter code sent to ',
                          style: Theme.of(context).textTheme.headline3.copyWith(
                              color: KTextPrimary.withOpacity(0.6),
                              height: 1.2,
                              fontWeight: FontWeight.normal),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' +91 9999999999',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline3
                                    .copyWith(
                                        color: Theme.of(context).primaryColor,
                                        height: 1.2,
                                        fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // navigate to desired screen
                                  }),
                          ]),
                    )),
                SizedBox(
                  height: 32,
                ),
                PinCodeTextField(
                  onCompleted: (value) {
                    Navigator.of(context).pushNamed("delivery");
                  },
                  appContext: context,
                  pastedTextStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                  length: 6,
                  cursorColor: Theme.of(context).primaryColor.withOpacity(0.9),
                  pinTheme: PinTheme(
                    inactiveColor:
                        Theme.of(context).primaryColor.withOpacity(0.5),
                    selectedColor:
                        Theme.of(context).primaryColor.withOpacity(0.9),
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 60,
                    fieldWidth: 50,
                    activeFillColor: KLightBackground,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: Text(
                        "Resend Otp ?",
                        style: Theme.of(context).textTheme.headline3.copyWith(
                              color: Theme.of(context)
                                  .accentColor
                                  .withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                // Container(
                //   child: ButtonTheme(
                //     padding: EdgeInsets.symmetric(vertical: 18),
                //     minWidth: double.infinity,
                //     child: RaisedButton(
                //       elevation: 0,
                //       onPressed: () {},
                //       color: Theme.of(context).primaryColor,
                //       textColor: Theme.of(context).accentColor,
                //       child: Text("Verify ",
                //           style: Theme.of(context).textTheme.headline2.copyWith(
                //               color: Theme.of(context).backgroundColor,
                //               height: 1)),
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(12)),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
