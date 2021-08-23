import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/json/constant.dart';
import 'package:shopping_app/theme/colors.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }

  Widget getBody(){
    return ListView(
      children: [
        Padding(padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Row(
          children: [
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(profileUrl), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "BHUMIKA",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Connect since 2020",
                  style:
                  TextStyle(fontSize: 13, color: black.withOpacity(0.7)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: black, borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        "EDIT ACCOUNT",
                        style: TextStyle(fontSize: 13, color: white),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        ),
        SizedBox(height: 40,),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.box,
                    color: black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Orders",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.mapMarkerAlt,
                    color: black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "My Address",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.cog,
                    color: black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Setttings",
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Divider(
          thickness: 1,
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            children: List.generate(accountList.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          accountList[index],
                          style: TextStyle(fontSize: 16),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: black.withOpacity(0.5),
                          size: 17,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    // divider loop m chlra hai list generate k andr
                    Divider(
                      color: grey.withOpacity(0.8),
                    )
                  ],
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
