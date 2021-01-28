import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iflexweb_app/utils/app_colors.dart';

import '../basic_profile.dart';
import '../order_history.dart';
import '../wish_list.dart';
class ProfileMenu extends StatefulWidget {
  @override
  _ProfileMenuState createState() => _ProfileMenuState();
}

class _ProfileMenuState extends State<ProfileMenu> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      //height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.18,
      //color:Colors.red,
      child:Align(
        alignment:Alignment.center,
        child: Container(
          alignment:Alignment.center,
          width: MediaQuery.of(context).size.width * 0.18,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Card(
                  child:Column(
                    children: [
                      Container(
                        color: AppColors.yellowColor,
                        // width:double.infinity,
                        width: MediaQuery.of(context).size.width * 0.14,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Categories',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        // width:double.infinity,
                        width: MediaQuery.of(context).size.width * 0.14,
                        child: Column(
                          children: [
                            ListTile(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BasicProfile()));
                              },
                              title:Text('Basic Profile',style:TextStyle(fontSize:16,fontWeight:FontWeight.w500,color:AppColors.blueColor),),
                            ),
                            Divider(
                              height:1,
                              indent:8,
                              endIndent:8,
                            ),
                            ListTile(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        // builder: (context) =>
                                        //     OrderHistory()
                                    ));
                              },
                              title:Text('Order History',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400,color:Colors.black),),
                            ),
                            Divider(
                              height:1,
                              indent:8,
                              endIndent:8,
                            ),
                            ListTile(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        //builder: (context) => WishList()
                                    )
                                );
                              },
                              title:Text('Wish List',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400,color:Colors.black),),
                            ),
                            Divider(
                              height:1,
                              indent:10,
                              endIndent:10,
                            ),
                            ListTile(
                              onTap: (){

                              },
                              title:Text('Refer A Friend',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400,color:Colors.black),),
                            ),
                            Divider(
                              height:1,
                              indent:10,
                              endIndent:10,
                            ),
                            ListTile(
                              onTap: (){

                              },
                              title:Text('Address',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400,color:Colors.black),),
                            ),
                            Divider(
                              height:1,
                              indent:10,
                              endIndent:10,
                            ),
                            ListTile(
                              onTap: (){

                              },
                              title:Text('FAQ',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400,color:Colors.black),),
                            ),
                            Divider(
                              height:1,
                              indent:10,
                              endIndent:10,
                            ),
                            ListTile(
                              onTap: (){

                              },
                              title:Text('Logout',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400,color:Colors.black),),
                            ),
                            Divider(
                              height:1,
                              indent:10,
                              endIndent:10,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
