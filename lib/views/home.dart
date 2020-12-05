import 'package:flutter/material.dart';
import 'package:hyperzod_client_app/components/horizontal_list.dart';
import 'package:hyperzod_client_app/controllers/HomeController.dart';
import 'package:line_icons/line_icons.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends StateMVC<Home> {
  HomeController _con;
  _HomeState() : super(HomeController()) {
    _con = controller;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(top: 32, left: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 10,
                      child: Container(
                        child: TextField(
                          //controller: _con.mobileController,
                          style:
                              TextStyle(color: Colors.black.withOpacity(0.5)),

                          decoration: new InputDecoration(
                            suffixIcon: Icon(
                              LineIcons.chevron_down,
                              size: 16,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            border: InputBorder.none,
                            focusedBorder: new OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                )),
                            enabledBorder: new OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                )),
                            filled: true,
                            hintStyle: new TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                            hintText: "6579 Toronto Canada.",
                            fillColor: Colors.grey.shade100,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  )),
                              padding: EdgeInsets.symmetric(
                                  vertical: 11, horizontal: 12),
                              child: Icon(Icons.tune_sharp),
                            ),
                          ),
                        )),
                  ],
                ),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                    const Radius.circular(25.0),
                  )),
                  padding: EdgeInsets.only(top: 32),
                  child: HorizontalList(list: _con.banners),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
