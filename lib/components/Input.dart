import 'package:flutter/material.dart';
import 'package:hyperzod_client_app/helpers/constants.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class Input extends StatelessWidget {
  String title;
  ControllerMVC con;
  Input({this.title, this.con});
  @override
  Widget build(BuildContext context) {
    return TextField(
      //controller: _con.mobileController,
      style: Theme.of(context).textTheme.headline3.copyWith(
          color: KTextPrimary.withOpacity(0.6),
          height: 1.2,
          fontWeight: FontWeight.normal),

      decoration: new InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: KTextPrimary.withOpacity(0.2)),
            borderRadius: KRadius),
        focusedBorder: new OutlineInputBorder(
            borderSide: BorderSide(color: KTextPrimary.withOpacity(0.2)),
            borderRadius: KRadius),
        enabledBorder: new OutlineInputBorder(
            borderSide: BorderSide(color: KTextPrimary.withOpacity(0.2)),
            borderRadius: KRadius),
        hintStyle: Theme.of(context).textTheme.headline3.copyWith(
            color: KTextPrimary.withOpacity(0.6),
            height: 1.2,
            fontWeight: FontWeight.normal),
        hintText: title,
      ),
    );
  }
}
