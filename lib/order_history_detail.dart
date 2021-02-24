import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iflexweb_app/ui_widgets/appbar.dart';
import 'package:iflexweb_app/ui_widgets/profile_menu.dart';
import 'package:iflexweb_app/utils/app_colors.dart';
class orderhistorydetail extends StatefulWidget {
  var orderStatuss;
  orderhistorydetail({this.orderStatuss});
  @override
  _orderhistorydetailState createState() => _orderhistorydetailState(orderStatuss: orderStatuss);
}

class _orderhistorydetailState extends State<orderhistorydetail> {
  var orderStatuss;
  _orderhistorydetailState({this.orderStatuss});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TopBar(),
            SizedBox(height:20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileMenu(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,8,0,8),
                          child: Text('Home . Profile . Order History . ',style:TextStyle(fontSize:18,fontWeight:FontWeight.w400,color:Colors.grey),),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0,8,8,8),
                              child: Text('ID - 4561ADS',style:TextStyle(fontSize:18,fontWeight:FontWeight.w400,color:AppColors.blueColor),),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width:MediaQuery.of(context).size.width*0.40,
                          //height:MediaQuery.of(context).size.height,
                          //color:Colors.yellow,
                          child:Column(
                            children: [
                              Container(
                                width:MediaQuery.of(context).size.width*0.40,
                                child:Card(
                                  child:Column(
                                    children: [
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Id: 4561ADS',style:TextStyle(fontSize:18,fontWeight:FontWeight.w500,color:Colors.black),),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text('8 items',style:TextStyle(color:Colors.grey,fontSize:14),),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height:10,),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Morning slot - 6AM to 9AM',style:TextStyle(color:Colors.grey),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              children: [
                                                if (orderStatuss=='placed'||orderStatuss=='shipped')GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    print(orderStatuss);
                                                  });
                                                  },
                                                child: Container(
                                                    height:25.0,
                                                    width:50.0,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(width: 1,
                                                          color: AppColors.blueColor,
                                                        ),
                                                        borderRadius: BorderRadius.all(Radius.circular(5))),
                                                    child: Center(
                                                        child: Text(
                                                          "Cancel",
                                                          style: TextStyle(
                                                              fontSize:14,
                                                              fontWeight: FontWeight.w400, color:AppColors.blueColor,
                                                              decoration: TextDecoration.none),))),
                                              ),
                                                if (orderStatuss=='on the way'||orderStatuss=='delivered')GestureDetector(
                                                  onTap: (){
                                                    setState(() {
                                                      print(orderStatuss);
                                                    });
                                                  },
                                                  child: Container(
                                                      height:25.0,
                                                      width:50.0,
                                                      decoration: BoxDecoration(
                                                          border: Border.all(width: 1,
                                                            color: AppColors.blueColor,
                                                          ),
                                                          borderRadius: BorderRadius.all(Radius.circular(5))),
                                                      child: Center(
                                                          child: Text(
                                                            "Return",
                                                            style: TextStyle(
                                                                fontSize:14,
                                                                fontWeight: FontWeight.w400, color:AppColors.blueColor,
                                                                decoration: TextDecoration.none),))),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height:10,)
                                    ],
                                  ),

                                ),
                              ),
                              Container(
                                width:MediaQuery.of(context).size.width*0.40,
                                child:Card(
                                  child:Column(
                                    children: [
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Order Status',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400,color:AppColors.blueColor),),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Container(
                                                  color:Colors.orange.shade100,
                                                    child: Text('on the way',style:TextStyle(color:Colors.deepOrangeAccent,fontSize:14),)),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(height:20,),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment:MainAxisAlignment.start,
                                              crossAxisAlignment:CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    CircleAvatar(
                                                      radius:10,
                                                        backgroundColor:AppColors.blueColor,
                                                        child: Center(child: Icon(Icons.done,color:Colors.white,size:15,))),
                                                    SizedBox(width:20,),
                                                    Column(
                                                      mainAxisAlignment:MainAxisAlignment.start,
                                                      crossAxisAlignment:CrossAxisAlignment.start,
                                                      children: [
                                                        Text('Order Placed',style:TextStyle(fontSize:18,color:Colors.black,fontWeight:FontWeight.w400),),
                                                        Text('Thanks for placing the order',style:TextStyle(fontSize:16,color:Colors.grey,fontWeight:FontWeight.w400),),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height:50,),
                                                Row(
                                                  children: [
                                                    CircleAvatar(
                                                        radius:10,
                                                        backgroundColor:AppColors.blueColor,
                                                        child: Center(child: Icon(Icons.done,color:Colors.white,size:15,))),
                                                    SizedBox(width:20,),
                                                    Column(
                                                      mainAxisAlignment:MainAxisAlignment.start,
                                                      crossAxisAlignment:CrossAxisAlignment.start,
                                                      children: [
                                                        Text('Shipped',style:TextStyle(fontSize:18,color:Colors.black,fontWeight:FontWeight.w400),),
                                                        Text('Your order has been shipped',style:TextStyle(fontSize:16,color:Colors.grey,fontWeight:FontWeight.w400),),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height:50,),
                                                Row(
                                                  children: [
                                                    CircleAvatar(
                                                        radius:10,
                                                        backgroundColor:AppColors.blueColor,
                                                        child: Center(child: Icon(Icons.done,color:Colors.white,size:15,))),
                                                    SizedBox(width:20,),
                                                    Column(
                                                      mainAxisAlignment:MainAxisAlignment.start,
                                                      crossAxisAlignment:CrossAxisAlignment.start,
                                                      children: [
                                                        Text('On the way',style:TextStyle(fontSize:18,color:Colors.black,fontWeight:FontWeight.w400),),
                                                        Text('Your order is now out for delivery',style:TextStyle(fontSize:16,color:Colors.grey,fontWeight:FontWeight.w400),),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height:50,),
                                                Row(
                                                  children: [
                                                    CircleAvatar(
                                                        radius:10,
                                                        backgroundColor:AppColors.blueColor,
                                                        child: Center(child: Icon(Icons.done,color:Colors.white,size:15,))),
                                                    SizedBox(width:20,),
                                                    Column(
                                                      mainAxisAlignment:MainAxisAlignment.start,
                                                      crossAxisAlignment:CrossAxisAlignment.start,
                                                      children: [
                                                        Text('Order Delivered',style:TextStyle(fontSize:18,color:Colors.black,fontWeight:FontWeight.w400),),
                                                        Text('Your order is now delivered',style:TextStyle(fontSize:16,color:Colors.grey,fontWeight:FontWeight.w400),),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height:20,),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height:10,)
                                    ],
                                  ),

                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width:10,),
                        Container(
                          width:MediaQuery.of(context).size.width*0.40,
                          //height:MediaQuery.of(context).size.height,
                          //color:Colors.black12,
                          child:Card(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Items',style:TextStyle(color:AppColors.blueColor,fontSize:16),),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('13 items',style:TextStyle(color:AppColors.yellowColor),),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.40,
                                      height:MediaQuery.of(context).size.height*0.70,
                                      child: Column(
                                        children: [
                                          Container(
                                            child: Expanded(
                                              child: ListView.builder(
                                                itemCount:100,
                                                itemBuilder:(BuildContext context, int index){
                                                  return Container(
                                                    width: MediaQuery.of(context).size.width * 0.30,
                                                    child:Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Container(
                                                        width:MediaQuery.of(context).size.width * 0.20,
                                                        child: Card(
                                                          child: Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Column(
                                                              children: [
                                                                Row(
                                                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                                  children: [
                                                                    Row(
                                                                      children: [
                                                                        Container(
                                                                          width:MediaQuery.of(context).size.width * 0.10,
                                                                          height:MediaQuery.of(context).size.height*0.10,
                                                                          child:Image.asset('images/c.png',fit:BoxFit.cover,),
                                                                        ),
                                                                        Row(children: [
                                                                          Column(
                                                                            children: [
                                                                              Text('Stobantica Dalchini',style:TextStyle(fontSize:14,fontWeight:FontWeight.w500,color: Colors.black),),
                                                                              SizedBox(height:10,),
                                                                              Row(
                                                                                children: [
                                                                                  Text('Gitt',style:TextStyle(color:Colors.grey),),
                                                                                ],
                                                                              ),
                                                                              SizedBox(height:10,),
                                                                              Row(
                                                                                children: [
                                                                                  Text('Quantity - 5',style:TextStyle(color:AppColors.yellowColor),),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],),
                                                                      ],
                                                                    ),
                                                                    Row(children: [
                                                                      Column(
                                                                        children: [
                                                                          Text('50g',style:TextStyle(color:Colors.grey),),
                                                                          SizedBox(height:5,),
                                                                          Row(
                                                                            children: [
                                                                              Container(
                                                                                height:25,
                                                                                  width:50,
                                                                                  color:Colors.black12,
                                                                                  child: Center(child: Text('\$30',style:TextStyle(fontSize:14,color:Colors.black54,),))),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],),
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
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
