import 'package:flutter/material.dart';
import 'package:iflexweb_app/basic_profile.dart';
import 'package:iflexweb_app/utils/app_colors.dart';
import '../forgot_password.dart';
import '../home.dart';
import '../order_history.dart';
import '../refer_friend.dart';
import '../wish_list.dart';

class TopBar extends StatefulWidget {
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  bool _menuShown = false;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    super.initState();
  }
var username='Stefani Williams';
  @override
  Widget build(BuildContext context) {
    Animation opacityAnimation =
        Tween(begin: 0.0, end: 1.0).animate(animationController);
    if (_menuShown)
      animationController.forward();
    else
      animationController.reverse();
    return Column(
      children: [
        Container(
          width: double.infinity,
          color: AppColors.blueColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Swadesh',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.white,
                  ),
                  Text(
                    'New Jersy US',
                    style: TextStyle(
                        fontSize: 12, color: Colors.lightBlueAccent[100]),
                  ),
                ],
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('images/vinc.png'),
                  ),
                  SizedBox(width:5,),
                  new DropdownButton<String>(
                    style:TextStyle(color:Colors.white),
                    hint:Text(username,style:TextStyle(color:Colors.white),),
                    underline:Container(
                      height:0,
                    ),
                   items: <String>['Basic Profile', 'Wish list', 'Orders', 'Refer A Friend','Address','Help','Logout'].map((String value)
                        {
                      return new DropdownMenuItem<String>(
                        value:value,
                        child: FlatButton(
                          onPressed: () {
                            switch (value){
                              case "Basic Profile":
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BasicProfile()
                                    ));
                                break;
                              case "Wish list":
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                         builder: (context) =>
                                             WishList()
                                    ));
                                //print('print b');
                                break;
                              case "Orders":
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                         builder: (context) =>
                                             OrderHistory()
                                    ));
                                //print('print b');
                                break;
                              case "Refer A Friend":
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ReferFriend()));
                                //print('print b');
                                break;
                              case "Address":
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            forgotpassword()));
                                //print('print b');
                                break;
                              case "Help":
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            forgotpassword()));
                                //print('print b');
                                break;
                              case "Logout":
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            forgotpassword()));
                                //print('print b');
                                break;
                            }
                          },
                          child: Row(
                             children: [ Text(value)],
                           ),
                        ),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ],
              ),

              // Row(
              //   children:<Widget> [Stack(
              //        overflow: Overflow.visible,
              //        children: <Widget>[
              //      IconButton(iconSize:50,
              //         icon:Image(image:AssetImage('images/Screenshot.png'),width:20,height:20,fit:BoxFit.cover,)
              //       // icon: Icon(Icons.menu)
              //       , onPressed: (){
              //        setState(() {
              //      _menuShown = !_menuShown;
              //       });
              //      }
              //      ),
              //      Positioned(
              //      child: FadeTransition(
              //     opacity: opacityAnimation,
              //      child: _ShapedWidget(onlyTop: true,),
              //      ),
              //      right: 4.0,
              //      top: 48.0,
              //    ),
              //    ]
              //   ),
              //     /*Stack(
              //         overflow: Overflow.visible,
              //         children: <Widget>[
              //           Positioned(
              //             child: FadeTransition(
              //               opacity: opacityAnimation,
              //               child: _ShapedWidget(),
              //             ),
              //             // right: 4.0,
              //             // top: -4.0,
              //             //right: 4.0,
              //             //top: -4.0,
              //           ),
              //         ],
              //     )*/
              //   ],
              // ),
              // // Stack(
              // //   overflow: Overflow.visible,
              // //   children: <Widget>[
              // //     Positioned(
              // //       child: FadeTransition(
              // //         opacity: opacityAnimation,
              // //         child: _ShapedWidget(),
              // //       ),
              // //       // right: 4.0,
              // //       // top: -4.0,
              // //       //right: 4.0,
              // //       //top: -4.0,
              // //     ),
              // //   ],
              // // ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ShapedWidget extends StatelessWidget {
  _ShapedWidget({this.onlyTop = false});

  final double padding = 4.0;
  final bool onlyTop;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Material(
      clipBehavior: Clip.antiAlias,
      shape: _ShapedWidgetBorder(
          borderRadius: BorderRadius.all(Radius.circular(padding)),
          padding: padding),
      elevation: 4.0,
      child: Container(
          color: Colors.yellow,
          padding: EdgeInsets.all(padding).copyWith(bottom: padding * 2),
          child: onlyTop
              ? SizedBox(
                  width: 190.0,
                  height: 20.0,
                )
              : SizedBox(
                  width: 190.0,
                  height: 336.0,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Basic Profile'),
                        onTap: () {
                          print('print person');
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.favorite_outline_sharp),
                        title: Text('Wish list'),
                        onTap: () {
                          print('print person');
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.shopping_cart),
                        title: Text('orders'),
                        onTap: () {
                          print('print person');
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.share),
                        title: Text('Refer a friend'),
                        onTap: () {
                          print('print person');
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on_outlined),
                        title: Text('Address'),
                        onTap: () {
                          print('print person');
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.help),
                        title: Text('Help'),
                        onTap: () {
                          print('print person');
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.power_settings_new),
                        title: Text('Logout'),
                        onTap: () {
                          print('print person');
                        },
                      ),
                    ],
                  ),
                  /* child: onlyTop ? SizedBox(width: 150.0, height: 20.0,) :  SizedBox(width: 150.0, height: 250.0,

             child: Center(child: Text('ShapedWidget'),),),*/
                )),
    ));
  }
}

class _ShapedWidgetBorder extends RoundedRectangleBorder {
  _ShapedWidgetBorder({
    @required this.padding,
    side = BorderSide.none,
    borderRadius = BorderRadius.zero,
  }) : super(side: side, borderRadius: borderRadius);
  final double padding;

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return Path()
      ..moveTo(rect.width - 8.0, rect.top)
      ..lineTo(rect.width - 20.0, rect.top - 16.0)
      ..lineTo(rect.width - 32.0, rect.top)
      ..addRRect(borderRadius.resolve(textDirection).toRRect(Rect.fromLTWH(
          rect.left, rect.top, rect.width, rect.height - padding)));
  }
}
