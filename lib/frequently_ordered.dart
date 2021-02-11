import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iflexweb_app/ui_widgets/appbar.dart';
import 'package:iflexweb_app/ui_widgets/side_navigation_menu.dart';
import 'package:iflexweb_app/utils/app_colors.dart';
class frequentlyOrder extends StatefulWidget {
  @override
  _frequentlyOrderState createState() => _frequentlyOrderState();
}

class _frequentlyOrderState extends State<frequentlyOrder> {
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
               /* Container(
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Stefani Williams',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),*/
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
                            children: [
                              Icon(
                                Icons.remove,
                                color: AppColors.yellowColor,
                                size: 30,
                              ),
                              Text('Frequently Ordered (8)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
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
                                 /* Expanded(
                                    child:GridView(
                                      shrinkWrap: true,
                                      // physics: ScrollPhysics(),
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: countRow,
                                        childAspectRatio:0.75,
                                        mainAxisSpacing:5,
                                        crossAxisSpacing:5,
                                      ),
                                      children: List.generate(8, (index) => Card(
                                        child:Column(
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
                                      )
                                      ),
                                    ),
                                  );*/
                                  GridView.count(
                                    crossAxisCount:countRow,
                                    crossAxisSpacing:1,
                                    childAspectRatio:0.75,
                                    mainAxisSpacing:5,
                                    children:
                                    List.generate(8, (index){
                                      return Column(
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
