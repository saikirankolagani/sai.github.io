import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ui_widgets/appbar.dart';
import 'ui_widgets/side_navigation_menu.dart';
import 'utils/app_colors.dart';
class banner extends StatefulWidget {
  @override
  _bannerState createState() => _bannerState();
}

class _bannerState extends State<banner> {
  var selectedgram;
  int counter=0;
  int newCounter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Stack(
          children: [
            Column(
              children: [
                TopBar(),
                Row(
                  children: [
                    SideNavigationMenu(),
                    Container(
                      width: MediaQuery.of(context).size.width*0.79,
                      height: MediaQuery.of(context).size.height,
                      child:  Column(
                        children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Cooking Baking Essentials (13 Items)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child:Row(
                                      children: [
                                        Text('Filter',style:TextStyle(fontSize:18,fontWeight:FontWeight.w400,color:Colors.black45),),
                                        SizedBox(width:20,),
                                        Text('Sort',style:TextStyle(fontSize:18,fontWeight:FontWeight.w400,color:Colors.black45),),
                                        SizedBox(width:40,),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                            indent: 10,
                            endIndent: 20,
                          ),
                          Expanded(
                            child: OrientationBuilder(
                              builder: (context, or) {
                                double width = MediaQuery.of(context).size.width;
                                int widthDiv = 250;
                                int countRow = width ~/ widthDiv;
                                return
                                  GridView.count(
                                    crossAxisCount:countRow,
                                    crossAxisSpacing:1,
                                    childAspectRatio:0.75,
                                    mainAxisSpacing:5,
                                    children:
                                    List.generate(8, (index){
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text('20%0ff',style:TextStyle(fontSize:14,fontWeight:FontWeight.w500,color:Colors.redAccent),),
                                                  ],
                                                ),
                                                Icon(Icons.favorite,color:Colors.black38,)
                                              ],
                                            ),
                                            Center(
                                                child:
                                                //SizedBox(width: 60,),
                                                Container(
                                                  height:100,
                                                  width: 150,
                                                  child:Image.asset('images/o.png'),
                                                )
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text('Nagpur',style:TextStyle(fontWeight:FontWeight.w500,color:Colors.black),),
                                                          ],
                                                        ),
                                                        Text('Oranges',style:TextStyle(fontWeight:FontWeight.w500,color:Colors.black),),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(width: 50,),
                                                Row(
                                                  children: [
                                                    DropdownButtonHideUnderline(
                                                      child: DropdownButton<String>(
                                                        items:['250 g','500 g','750 g','1000 g'].map((String dropDownStringItem) {
                                                          return DropdownMenuItem<String>(
                                                            value: dropDownStringItem,
                                                            child: Text(dropDownStringItem),
                                                          );
                                                        }).toList(),
                                                        onChanged: (String newValueSelected) {
                                                          setState(() {
                                                            selectedgram=newValueSelected;
                                                          });
                                                        },
                                                        value: selectedgram,
                                                        hint: Text('grams'),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      GestureDetector(
                                                        onTap: (){
                                                          if(counter>0)counter--;
                                                          setState(() {
                                                            newCounter=counter;
                                                          });
                                                        },
                                                        child: Container(
                                                          height: 20,
                                                          width: 20,
                                                          color: Colors.grey,
                                                          child: Icon(Icons.remove,size: 10,),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.all(8),
                                                        child: Text(newCounter.toString()),
                                                      ),
                                                      GestureDetector(
                                                        onTap: (){
                                                          counter++;
                                                          setState(() {
                                                            newCounter=counter;
                                                          });

                                                        },
                                                        child: Container(
                                                          height: 20,
                                                          width: 20,
                                                          color: Colors.grey,
                                                          child: Icon(Icons.add,size: 10,),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  child: Row(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Icon(Icons.attach_money,color:Colors.blueAccent,size:15,),
                                                          Text("50.0",style:TextStyle(fontWeight:FontWeight.w400,color:Colors.blueAccent),)
                                                        ],
                                                      ),
                                                      Text("/packet",style:TextStyle(fontWeight:FontWeight.w400,color:Colors.black38),)
                                                    ],
                                                  ),
                                                ),
                                                // SizedBox(width:20,),
                                                GestureDetector(
                                                  onTap:(){
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                          //builder: (context)=>register()
                                                        ));
                                                  },
                                                  child: Card(
                                                    child: Container(
                                                        height:30.0,
                                                        width:60.0,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                              width:1,
                                                              color: Colors.blue,
                                                            ),
                                                            borderRadius: BorderRadius.all(Radius.circular(5))),
                                                        child: Center(child: Text("Add Cart",style: TextStyle(fontSize:10,fontWeight:FontWeight.w500 ,color: Colors.blue,decoration:TextDecoration.none),))),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      );
                                    }),
                                  );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
