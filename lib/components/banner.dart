import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  String url;
  BannerWidget({this.url});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.78,
      margin: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              url,
            ),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.overlay),
          ),
          borderRadius: const BorderRadius.all(
            const Radius.circular(20.0),
          )),
    );
  }
}
