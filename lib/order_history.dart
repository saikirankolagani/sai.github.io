import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iflexweb_app/order_history_detail.dart';
import 'package:iflexweb_app/ui_widgets/appbar.dart';
import 'package:iflexweb_app/ui_widgets/profile_menu.dart';
import 'package:iflexweb_app/utils/app_colors.dart';
class OrderHistory extends StatefulWidget {
  @override
  _OrderHistoryState createState() => _OrderHistoryState();
}
var selectedGrams;
class _OrderHistoryState extends State<OrderHistory> {
  List<String> orderHistory=['placed','shipped','on the way','delivered'];
  String orderStatus='placed';
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
                  //color:Colors.yellow,
                  child:Column(
                    children: [
                      SizedBox(height:20),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100,0,100,0),
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Order History',style:TextStyle(fontSize:22,color:Colors.black),),
                            // Row(
                            //   children: [
                            //     //Text('Ongoing',style:TextStyle(fontSize:22,color:Colors.black),),
                            //   ],
                            // )
                            Row(
                              children: [
                                DropdownButtonHideUnderline(
                                  child: DropdownButton<
                                      String>(
                                    items:['2 days','5 days','8days','12 days'].map((
                                        String dropDownStringItem) {
                                      return DropdownMenuItem<
                                          String>(
                                        value: dropDownStringItem,
                                        child: Text(
                                            dropDownStringItem),
                                      );
                                    })
                                        .toList(),
                                    onChanged: (
                                        String newValueSelected) {
                                      setState(() {selectedGrams =
                                            newValueSelected;
                                      });
                                    },
                                    value:selectedGrams,
                                    hint: Text('ongoing'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.60,
                          height:MediaQuery.of(context).size.height * 0.70,
                          child:
                          Column(
                            children: [
                              Container(
                                child: Expanded(
                                  child: ListView.builder(
                                    itemCount:orderHistory.length,
                                    itemBuilder:(BuildContext context, int index){
                                      return Container(
                                        width: MediaQuery.of(context).size.width * 0.30,
                                        child:Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width:MediaQuery.of(context).size.width * 0.20,
                                            child: GestureDetector(
                                              onTap:(){
                                                setState(() {
                                                  orderStatus=orderHistory[index];
                                                  print(orderStatus);
                                                });
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            orderhistorydetail(orderStatuss:orderStatus)));
                                              },
                                              child: Card(
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text('Id: 123456ASd',style:TextStyle(fontSize:14,color:AppColors.blueColor),),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Card(
                                                                child: Text('on the way',style:TextStyle(fontSize:16,fontWeight:FontWeight.w400,color:Colors.deepOrangeAccent,backgroundColor:Colors.orange[100]),)
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.fromLTRB(8,0,0,0),
                                                      child: Row(
                                                        children: [
                                                          Text('8 items | Dec 2 2020',style:TextStyle(fontSize:10,color:Colors.black54),),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      // crossAxisAlignment:CrossAxisAlignment.start,
                                                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Container(
                                                          //width: MediaQuery.of(context).size.width * 0.60,
                                                          child:
                                                          Row(
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.all(8.0),
                                                                child: Container(
                                                                  width:80,
                                                                  height:100,
                                                                  child:Image.asset('images/marisol.png',fit:BoxFit.cover,),
                                                                ),
                                                              ),
                                                              Column(
                                                                mainAxisAlignment:MainAxisAlignment.start,
                                                                crossAxisAlignment:CrossAxisAlignment.start,
                                                                children: [
                                                                  Padding(
                                                                    padding: const EdgeInsets.all(8.0),
                                                                    child: Text('Order Contains',style:TextStyle(fontSize:16,color:Colors.black,fontWeight:FontWeight.w500),),
                                                                  ),
                                                                  Padding(
                                                                    padding: const EdgeInsets.all(8.0),
                                                                    child: Center(child: Text('Orange(1*500g),Donut(7 pieces-250g each),brinjal(2*900g),\npotato(3*500g),sandwich(3*500g),oil(3*500g),bananas(3*500g)and more.',style:TextStyle(fontSize:14,color:Colors.black45,fontWeight:FontWeight.w400),)),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Column(
                                                          children: [
                                                            SizedBox(height:30,),
                                                            Row(
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets.all(8.0),
                                                                  child: Text('\$56/package',style:TextStyle(color:AppColors.blueColor,fontSize:16,fontWeight:FontWeight.w400),),
                                                                )
                                                              ],
                                                            ),
                                                            SizedBox(height:10,),
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
                                ),
                              ),
                            ],
                          ),
                          ),
                        ),
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
