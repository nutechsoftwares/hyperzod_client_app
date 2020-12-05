import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hyperzod_client_app/helpers/constants.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                margin: EdgeInsets.only(bottom: 16, top: 16),
                child: Image.asset(
                  "assets/images/splash.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Text(
                      "Quick Food Delivery On Your Door",
                      style: Theme.of(context)
                          .textTheme
                          .headline1
                          .copyWith(fontSize: 32, height: 1.2),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Find Delicious Food & Order ,Order Will Immediately Come To You.",
                      style: Theme.of(context).textTheme.headline3.copyWith(
                          color: KTextPrimary.withOpacity(0.6),
                          height: 1.2,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 32),
                    Container(
                      child: ButtonTheme(
                        padding: EdgeInsets.symmetric(vertical: 18),
                        minWidth: double.infinity,
                        child: RaisedButton(
                          elevation: 0,
                          onPressed: () {},
                          color: Theme.of(context).backgroundColor,
                          textColor: Theme.of(context).primaryColor,
                          child: Text("Guest Login",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .copyWith(
                                      color: Theme.of(context).primaryColor,
                                      height: 1)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side: BorderSide(
                                  color: Theme.of(context).primaryColor)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      child: ButtonTheme(
                        padding: EdgeInsets.symmetric(vertical: 18),
                        minWidth: double.infinity,
                        child: RaisedButton(
                          elevation: 0,
                          onPressed: () {
                            Navigator.of(context).pushNamed("login");
                          },
                          color: Theme.of(context).primaryColor,
                          textColor: Theme.of(context).accentColor,
                          child: Text("OTP Login",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2
                                  .copyWith(
                                      color: Theme.of(context).backgroundColor,
                                      height: 1)),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
