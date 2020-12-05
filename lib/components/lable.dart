import 'package:flutter/material.dart';
import 'package:hyperzod_client_app/helpers/constants.dart';

class Lable extends StatelessWidget {
  String title;
  Lable({this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline4.copyWith(
          color: KTextPrimary, height: 1.2, fontWeight: FontWeight.bold),
    );
  }
}
