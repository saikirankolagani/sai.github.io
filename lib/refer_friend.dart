import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iflexweb_app/ui_widgets/appbar.dart';
import 'package:iflexweb_app/ui_widgets/profile_menu.dart';
import 'package:iflexweb_app/utils/app_colors.dart';
class ReferFriend extends StatefulWidget {
  @override
  _ReferFriendState createState() => _ReferFriendState();
}

class _ReferFriendState extends State<ReferFriend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            SizedBox(height:30,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileMenu(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.82,
                  //color:Colors.yellow,
                  child:Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.40,
                                child:Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text('Refer a Friend',style:TextStyle(fontSize:25,fontWeight:FontWeight.w500,color:Colors.black),),
                                      ],
                                    ),
                                    SizedBox(height:50,),
                                    Row(
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context).size.width * 0.40,
                                            child:
                                            Text('Invite Your friends to join swadesh and get''\n' +'\$5 referral bonus for each friend who joins''\n'+'using referral code',style:TextStyle(fontSize:18,color:Colors.black,fontWeight:FontWeight.w400),)),
                                      ],
                                    ),
                                    SizedBox(height: 50,),
                                    Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.20,
                                          color:Colors.black12,
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(30,8,30,8),
                                            child: Center(child: Text('Stefwill069',style:TextStyle(fontSize:22,fontWeight:FontWeight.w400,color:AppColors.blueColor,),)),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.20,
                                              child: GestureDetector(
                                                onTap:(){
                                                  print('code Copied');
                                                },
                                                child: Container(
                                                  color:AppColors.blueColor,
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Center(child: Text('Click to Copy Code',style:TextStyle(fontSize:22,fontWeight:FontWeight.w400,color:Colors.white,backgroundColor:AppColors.blueColor),)),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height:80,),
                                    Row(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width * 0.20,
                                          child: GestureDetector(
                                            onTap: (){
                                              //print('refer now');
                                             showDialog(context: context,
                                             builder: (BuildContext context) {
                                               return AlertDialog(
                                                 content:Column(
                                                   mainAxisSize: MainAxisSize.min,
                                                   children: [
                                                   Text('Refer A Friend',style:TextStyle(color:AppColors.blueColor,fontSize:16,fontWeight:FontWeight.w500),),
                                                     SizedBox(height:10,),
                                                     Text('Please enter the Emai lid to refer a friend',style:TextStyle(color:Colors.black45,fontSize:16,fontWeight:FontWeight.w400),),
                                                     SizedBox(height:10,),
                                                     Container(
                                                       width: MediaQuery.of(context).size.width * 0.20,
                                                       child: TextFormField(
                                                         decoration: InputDecoration(
                                                             border:OutlineInputBorder(),
                                                             hintText: 'Email ID',
                                                             labelText: 'Friend Email'
                                                         ),
                                                       ),
                                                     ),
                                                     SizedBox(height:10,),
                                                     GestureDetector(
                                                       onTap:(){

                                                       },
                                                       child: Card(
                                                         child: Container(
                                                             //height:55.0,
                                                             width:MediaQuery.of(context).size.width * 0.20,
                                                             color:AppColors.blueColor,
                                                             child: Center(
                                                                 child: Text(
                                                                   "Refer A Friend",
                                                                   style: TextStyle(
                                                                       fontSize:20,
                                                                       fontWeight: FontWeight
                                                                           .w400,
                                                                       color:Colors.white,
                                                                       decoration: TextDecoration.none),))),
                                                       ),
                                                     ),
                                                   ],
                                                 ),
                                               );
                                             },
                                             );
                                            },
                                            child: Card(
                                              child: Container(
                                                  height:55.0,
                                                  width:250.0,
                                                  decoration: BoxDecoration(
                                                      border: Border
                                                          .all(
                                                        width: 1,
                                                        color: AppColors
                                                            .blueColor,
                                                      ),
                                                      borderRadius: BorderRadius.all(Radius.circular(5))),
                                                  child: Center(
                                                      child: Text(
                                                        "Refer now",
                                                        style: TextStyle(
                                                            fontSize:20,
                                                            fontWeight: FontWeight
                                                                .w400,
                                                            color:Colors.black,
                                                            decoration: TextDecoration
                                                                .none),))),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height:210,),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            //color:Colors.yellow,
                            child:Column(
                              children: [
                                //SizedBox(height:100,),
                                Image.asset('images/refer.png',fit:BoxFit.cover,),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
