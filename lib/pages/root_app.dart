import 'package:flutter/material.dart';
import 'package:shopping_app/json/constant.dart';
import 'package:shopping_app/pages/account.dart';
import 'package:shopping_app/pages/cart.dart';
import 'package:shopping_app/pages/home_page.dart';
import 'package:shopping_app/pages/more_page.dart';
import 'package:shopping_app/pages/store_page.dart';
import 'package:shopping_app/theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  //appbar
  AppBar appBar = null;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor: white,
       bottomNavigationBar: getFooter(),
       appBar: getAppBar(),
       body: getBody(),


     );
   }
   Widget getBody(){
     return IndexedStack(
       index: activeTab,
       children: [
         HomePage(),
         StorePage(),
         Account(),
         Cart(),
         More(),
       ],
     );
   }

   // ignore: missing_return
   Widget getAppBar(){
     switch(activeTab){
       case 0 :
         appBar == null;

         break;
       case 1 :
         appBar == null;
          break;
       case 2 :
         return AppBar(
           elevation: 0.8,
           backgroundColor: white,
           title: Text('ACCOUNT',
           style: TextStyle(
             color: black
           ),
           ),
         );
         break;
       case 3 :
         return
         AppBar(
           elevation: 0.8,
           backgroundColor: white,
           title: Text('CART',
             style: TextStyle(
                 color: black
             ),
           ),
         );
         break;
       case 4 :
         return
         AppBar(
           elevation: 0.8,
           backgroundColor: white,
           title: Text('MORE',
             style: TextStyle(
                 color: black
             ),
           ),
         );
         break;


        default:
     }
   }

   Widget getFooter() {
     return Container(
       height: 80,
       decoration: BoxDecoration(
         color: white,
         border: Border(
           top: BorderSide(color: grey.withOpacity(0.3))
         )
       ),
       child: Padding(
         padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
         child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: List.generate(itemsTab.length, (index) =>
               IconButton(icon: Icon(itemsTab[index]['icon'],
               size: itemsTab[index]['size'],
                 color: activeTab == index ? accent : black
               ),
                   //get active tab in footer bar
                   onPressed: (){
                 setState(() {
                   activeTab = index;
                 });

               })
           )

         ),
       ),
     );
   }
}
