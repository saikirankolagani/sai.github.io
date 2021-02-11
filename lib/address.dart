import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iflexweb_app/ui_widgets/profile_menu.dart';
import 'package:iflexweb_app/utils/app_colors.dart';
import 'ui_widgets/appbar.dart';


class address extends StatefulWidget {
  //const address({Key key}) : super(key: key);
  @override
  _addressState createState() => _addressState();
}

class _addressState extends State<address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            TopBar(),
            SizedBox(height:20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileMenu(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.78,
                    height:MediaQuery.of(context).size.height*0.80,
                    child:Card(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Address',style:TextStyle(fontSize:22,color:Colors.black,fontWeight:FontWeight.w500),),
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          showDialog(context: context,builder: (BuildContext context){
                                            return AlertDialog(
                                              content:Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text('Add New Address',style:TextStyle(fontSize:22,color:Colors.black,fontWeight:FontWeight.w500),),
                                                      Row(
                                                        children: [
                                                          GestureDetector(
                                                            onTap:(){
                                                              Navigator.pop(context);
                                                            },
                                                            child: CircleAvatar(
                                                              backgroundColor: Colors.white,
                                                              radius:20,
                                                              child: Icon(Icons.close, color: Colors.black,),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(height:10,),
                                                  Column(
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Container(
                                                            width: MediaQuery.of(context).size.width * 0.40,
                                                            child: TextFormField(
                                                              decoration: InputDecoration(
                                                                  border:OutlineInputBorder(),
                                                                  hintText: 'Street',
                                                                  labelText: 'Unit'
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                          SizedBox(height:10,),Row(
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(context).size.width * 0.40,
                                                                child: TextFormField(
                                                                  decoration: InputDecoration(
                                                                      border:OutlineInputBorder(),
                                                                      hintText: '505001',
                                                                      labelText: 'postal code'
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),SizedBox(height:10,),Row(
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(context).size.width * 0.40,
                                                                child: TextFormField(
                                                                  decoration: InputDecoration(
                                                                      border:OutlineInputBorder(),
                                                                      hintText: 'India',
                                                                      labelText: 'Country'
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),SizedBox(height:10,),Row(
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(context).size.width * 0.40,
                                                                child: TextFormField(
                                                                  decoration: InputDecoration(
                                                                      border:OutlineInputBorder(),
                                                                      hintText: 'Queensland',
                                                                      labelText: 'State'
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),SizedBox(height:10,),Row(
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(context).size.width * 0.40,
                                                                child: TextFormField(
                                                                  decoration: InputDecoration(
                                                                      border:OutlineInputBorder(),
                                                                      hintText: 'Queensland',
                                                                      labelText: 'City'
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(height:10,),
                                                          Row(
                                                            children: [
                                                              Container(
                                                                width: MediaQuery.of(context).size.width * 0.40,
                                                                child: TextFormField(
                                                                  decoration: InputDecoration(
                                                                      border:OutlineInputBorder(),
                                                                      hintText: 'Opposite Sams Club',
                                                                      labelText: 'Land Mark (Optional)'
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(height:10,),
                                                      Row(
                                                        children: [
                                                          GestureDetector(
                                                            onTap:(){

                                                            },
                                                            child: Card(
                                                              child: Container(
                                                                //height:55.0,
                                                                  width:MediaQuery.of(context).size.width * 0.40,
                                                                  color:AppColors.blueColor,
                                                                  child: Center(
                                                                      child: Padding(
                                                                        padding: const EdgeInsets.all(8.0),
                                                                        child: Text("Add Address", style: TextStyle(fontSize:25,
                                                                              fontWeight: FontWeight.w500,
                                                                              color:Colors.white,
                                                                              decoration: TextDecoration.none),),
                                                                      ))),
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  )
                                                  
                                                ],
                                              ),
                                            );
                                          },
                                          );
                                        },
                                        child:
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('Add New Address',style:TextStyle(fontSize:16,color:AppColors.blueColor,fontWeight:FontWeight.w400),),
                                        )
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                 Container(
                                  // width:50,
                                   width: MediaQuery.of(context).size.width * 0.82,
                                   height:MediaQuery.of(context).size.height*0.80,
                                   child: GridView.count(
                                    crossAxisCount:2,
                                    crossAxisSpacing:1,
                                    //childAspectRatio:0.55,
                                    mainAxisSpacing:1,
                                    children:
                                      List.generate(200, (index){
                                        return Center(
                                          child:
                                          Padding(
                                            padding: const EdgeInsets.all(22.0),
                                            child: Container(
                                                 width: MediaQuery.of(context).size.width*0.30,
                                                 height:MediaQuery.of(context).size.height*0.50,
                                              decoration:BoxDecoration(
                                                border:Border.all(color:Colors.black,width:2.0),
                                              ),
                                              child://Text('Item',style:Theme.of(context).textTheme.headline1,),
                                              SingleChildScrollView(
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        SizedBox(height:10,),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Card(
                                                            color:Colors.blue.shade100,
                                                              child:
                                                          Padding(
                                                            padding: const EdgeInsets.all(8.0),
                                                            child: Text('New Jersey',style:TextStyle(fontSize:22,fontWeight:FontWeight.w400,color:AppColors.blueColor),),
                                                          )),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        SizedBox(height:10,),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text('Stefani Williams',style:TextStyle(fontSize:22,fontWeight:FontWeight.w500,color:Colors.black),),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.fromLTRB(8,0,8,8),
                                                          child: Text('502, Queens island,',style:TextStyle(fontSize:16,fontWeight:FontWeight.w500,color:Colors.black),),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.fromLTRB(8,0,8,8),
                                                          child: Text('necklace road',style:TextStyle(fontSize:16,fontWeight:FontWeight.w500,color:Colors.black),),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.fromLTRB(8,0,8,8),
                                                          child: Text('New jersey-210 009',style:TextStyle(fontSize:16,fontWeight:FontWeight.w500,color:Colors.black),),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.fromLTRB(8,0,8,8),
                                                          child: Text('+1 (201) 748-9949',style:TextStyle(fontSize:16,fontWeight:FontWeight.w700,color:Colors.black),),
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:MainAxisAlignment.end,
                                                      children: [
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Container(
                                                            child: Row(
                                                              children: [
                                                                Icon(Icons.edit_outlined),
                                                                GestureDetector(
                                                                  onTap: (){

                                                                  },
                                                                    child: Text('EDIT')),
                                                                SizedBox(width:5,),
                                                                Row(
                                                                  children: [
                                                                    Icon(Icons.delete_outline_outlined),
                                                                    GestureDetector(
                                                                        onTap: (){
                                                                          showDialog(context: context,builder: (BuildContext context){
                                                                            return AlertDialog(
                                                                              content:Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                children: [
                                                                                  Row(
                                                                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                                                    children: [
                                                                                      Text('Remove Address',style:TextStyle(fontSize:22,color:AppColors.blueColor,fontWeight:FontWeight.w500),),
                                                                                      Row(
                                                                                        children: [
                                                                                          GestureDetector(
                                                                                            onTap:(){
                                                                                              Navigator.pop(context);
                                                                                            },
                                                                                            child: CircleAvatar(
                                                                                              backgroundColor: Colors.white,
                                                                                              radius:20,
                                                                                              child: Icon(Icons.close, color: Colors.black,),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  SizedBox(height:10,),
                                                                                  Text('Are You Sure You Want To Remove This Address ?'),
                                                                                  SizedBox(height:15,),
                                                                                  Row(
                                                                                    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                                                                                    children: [
                                                                                      Container(
                                                                                        width:80,
                                                                                        child: RaisedButton(
                                                                                          textColor: Colors.white,
                                                                                          child: Padding(
                                                                                            padding: const EdgeInsets.all(8.0),
                                                                                            child: Text("Yes",style: TextStyle(fontSize:14,color: Colors.white)),
                                                                                          ),
                                                                                          color:AppColors.blueColor,
                                                                                          shape: RoundedRectangleBorder(
                                                                                            borderRadius: BorderRadius.circular(5.0),
                                                                                          ),
                                                                                          onPressed: (){
                                                                                            Navigator.push(context,MaterialPageRoute(
                                                                                              //builder: (context)=>login(),
                                                                                            ));
                                                                                          },
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        children: [
                                                                                          Container(
                                                                                            width:80,
                                                                                            child: RaisedButton(
                                                                                              textColor: Colors.white,
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsets.all(8.0),
                                                                                                child: Text("No",style: TextStyle(fontSize:14,color: Colors.white)),
                                                                                              ),
                                                                                              color:AppColors.blueColor,
                                                                                              shape: RoundedRectangleBorder(
                                                                                                borderRadius: BorderRadius.circular(5.0),
                                                                                              ),
                                                                                              onPressed: (){
                                                                                                Navigator.pop(context);
                                                                                              },
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            );
                                                                          },
                                                                          );
                                                                        },
                                                                        child: Text('REMOVE')),
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                                 )
                              ],
                            )
                          ],
                        ),
                      ),
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
