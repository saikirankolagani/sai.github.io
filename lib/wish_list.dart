import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iflexweb_app/ui_widgets/appbar.dart';
import 'package:iflexweb_app/ui_widgets/profile_menu.dart';
class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          TopBar(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ProfileMenu(),
              Container(
                width: MediaQuery.of(context).size.width * 0.82,
                color:Colors.yellow,
                child:Column(
                  children: [
                    Row(
                      children: [
                        Text('My Wishlist ( 6 items)',style:TextStyle(color:Colors.black,fontSize:22),)
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
