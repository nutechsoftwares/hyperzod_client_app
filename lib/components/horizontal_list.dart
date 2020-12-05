import 'package:flutter/material.dart';
import 'banner.dart';

class HorizontalList extends StatelessWidget {
  List list;
  HorizontalList({this.list});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return BannerWidget(
            url: list[index].url,
          );
        });
  }
}
