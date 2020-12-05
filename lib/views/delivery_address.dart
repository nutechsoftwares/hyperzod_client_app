import 'package:flutter/material.dart';
import 'package:hyperzod_client_app/components/Input.dart';
import 'package:hyperzod_client_app/helpers/constants.dart';
import 'package:line_icons/line_icons.dart';

class DeliveryAddress extends StatefulWidget {
  @override
  _DeliveryAddressState createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
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
                  "Set Delivery Location",
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
                  "Setting Your Delivery location here will help you to find nearest merchant for faster delivery.",
                  style: Theme.of(context).textTheme.headline3.copyWith(
                      color: KTextPrimary.withOpacity(0.6),
                      height: 1.2,
                      fontWeight: FontWeight.normal),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 8,
                      child: Input(
                        title: "Search location",
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: KRadius,
                              color: Theme.of(context).primaryColor),
                          child: Icon(
                            Icons.location_searching,
                            color: Theme.of(context).accentColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: Text(
                        "Select From Saved Addresses ?",
                        style: Theme.of(context).textTheme.headline3.copyWith(
                              color: Theme.of(context)
                                  .accentColor
                                  .withOpacity(0.8),
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.end,
                      ),
                    )
                  ],
                ),
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
                        Navigator.of(context).pushNamed("tabs");
                      },
                      color: Theme.of(context).primaryColor,
                      textColor: Theme.of(context).accentColor,
                      child: Text("Continue",
                          style: Theme.of(context).textTheme.headline2.copyWith(
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
      ),
    );
  }
}
