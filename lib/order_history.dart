import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iflexweb_app/ui_widgets/appbar.dart';
import 'package:iflexweb_app/ui_widgets/profile_menu.dart';
import 'package:iflexweb_app/utils/app_colors.dart';
class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileMenu(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.82,
                  color:Colors.yellow,
                  child:SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height:20),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Order History',style:TextStyle(fontSize:22,color:Colors.black),),
                            Row(
                              children: [
                                Text('Ongoing',style:TextStyle(fontSize:22,color:Colors.black),)
                              ],
                            )
                          ],
                        ),
                        Container(
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            // physics: NeverScrollableScrollPhysics(),
                            itemCount:5,
                            itemBuilder: (BuildContext context,
                                int index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SingleChildScrollView(
                                    child: Container(
                                      //width: MediaQuery.of(context).size.width * 0.20,
                                      child: Card(
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text('Id: 123456ASd',style:TextStyle(fontSize:14,color:AppColors.blueColor),),
                                                Row(
                                                  children: [
                                                    Card(
                                                        child: Text('on the way',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400,color:Colors.deepOrangeAccent,backgroundColor:Colors.orange[100]),)
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Text('8 items | Dec 2 2020',style:TextStyle(fontSize:10,color:Colors.black54),),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  width:80,
                                                  height:100,
                                                  child:Image.asset('images/c.png'),
                                                ),
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text('Order Contains',style:TextStyle(fontSize:16,color:Colors.black,fontWeight:FontWeight.w500),),
                                                          ],
                                                        ),
                                                        Text('Orange(1*500g),Donut(7 pieces-250g each),brinjal(2*900g),potato(3*500g),''\n' +'sandwich(3*500g),oil(3*500g),bananas(3*500g)and more.',style:TextStyle(fontSize:12,color:Colors.black45,fontWeight:FontWeight.w400),),
                                                      ],
                                                    ),

                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text('\$56/package',style:TextStyle(color:AppColors.blueColor,fontSize:16,fontWeight:FontWeight.w400),)
                                                      ],
                                                    ),
                                                    GestureDetector(
                                                      onTap: (){

                                                      },
                                                      child: Card(
                                                        child: Container(
                                                            height: 25.0,
                                                            width: 70.0,
                                                            decoration: BoxDecoration(
                                                                border: Border
                                                                    .all(
                                                                  width: 1,
                                                                  color: AppColors
                                                                      .blueColor,
                                                                ),
                                                                borderRadius: BorderRadius
                                                                    .all(
                                                                    Radius
                                                                        .circular(
                                                                        5))),
                                                            child: Center(
                                                                child: Text(
                                                                  "Repeat Order",
                                                                  style: TextStyle(
                                                                      fontSize: 10,
                                                                      fontWeight: FontWeight
                                                                          .w500,
                                                                      color: AppColors
                                                                          .blueColor,
                                                                      decoration: TextDecoration
                                                                          .none),))),
                                                      ),
                                                    ),
                                                  ],
                                                )

                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
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
