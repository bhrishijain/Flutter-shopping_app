

import 'package:flutter/material.dart';
import 'package:shopping_app/json/constant.dart';
import 'package:shopping_app/theme/colors.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );

  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
          child: Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(profileUrl), fit: BoxFit.cover)),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    "Bhumika",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "4 Orders",
                    style: TextStyle(fontSize: 15, color: grey),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Divider(
          color: grey.withOpacity(0.8),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(menusMore.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Text(
                    menusMore[index],
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 23),
                  ),
                );
              })),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (size.width - 100) / 2,
                height: 50,
                decoration: BoxDecoration(
                    color: black, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Settings",
                    style: TextStyle(fontSize: 15, color: white),
                  ),
                ),
              ),
              Container(
                width: (size.width - 100) / 2,
                height: 50,
                decoration: BoxDecoration(
                    color: black, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(
                    "Sign Out",
                    style: TextStyle(fontSize: 15, color: white),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
