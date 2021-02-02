import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iflexweb_app/ui_widgets/appbar.dart';
import 'package:iflexweb_app/ui_widgets/profile_menu.dart';
import 'package:iflexweb_app/utils/app_colors.dart';

import 'CardModel.dart';
class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  var selectedgram;
  int counter = 0;
  int newCounter = 0;
  List order = [];
  List<CardModel> cardModel = [];

  @override
  //  void initState(){
  //   for(int i=0;i<20;i++){
  //   order.add(0);
  //    }
  //    print(order);
  //   createCardList();
  //   super.initState();
  // }
  void initState() {
    createCardList();
    super.initState();
  }

  List<String> images = ['images/palak.png',
    'images/mushrooms.png',
    'images/bread.png',
    'images/c.png',
    'images/o.png',
  ];

  createCardList() {
    for (var i = 0; i < 5; i++) {
      cardModel.add(CardModel(
          name: "fruit $i",
          grams: new List()
            ..addAll(["500g", "250g", "1kg", "1.5kg"]),
          offerPercentage: i * 10,
          pricePerPacket: 70 * i,
          quantity: 0,
          imageUrl: images[i],
          selectedGrams: "500g"
      ));
    }
    setState(() {
      cardModel = cardModel;
    });
  }
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
                Container(
                  width: MediaQuery.of(context).size.width * 0.82,
                  //height: MediaQuery.of(context).size.height,
                  //color:Colors.yellow,
                  child:Column(
                    children: [
                      SizedBox(height:5,),
                      Row(
                        children: [
                          Text('My Wishlist (8 items)',style:TextStyle(color:Colors.black,fontSize:22,fontWeight:FontWeight.w500),)
                        ],
                      ),
                      SizedBox(height:20,),
                      Column(
                        children: [
                          SingleChildScrollView(
                            child: OrientationBuilder(
                              builder: (context, or) {
                                double width = MediaQuery.of(context).size.width;
                                int widthDiv = 250;
                                int countRow = width ~/ widthDiv;
                                return
                                  Expanded(
                                    child: GridView(
                                      shrinkWrap: true,
                                      physics: ScrollPhysics(),
                                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: countRow,
                                        childAspectRatio: 0.80,
                                        mainAxisSpacing: 5,
                                        crossAxisSpacing: 5,
                                      ),
                                      children: List.generate(
                                          cardModel.length, (index) =>
                                          Card(
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(cardModel[index]
                                                            .offerPercentage
                                                            .toString() + "%off",
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight
                                                                  .w500,
                                                              color: Colors
                                                                  .redAccent),),
                                                      ],
                                                    ),
                                                    Icon(Icons.favorite,
                                                      color: Colors.black38,)
                                                  ],
                                                ),
                                                Center(
                                                    child:
                                                    //SizedBox(width: 60,),
                                                    Container(
                                                      height: 100,
                                                      width: 150,
                                                      child: Image.asset(
                                                          cardModel[index].imageUrl
                                                              .toString()),
                                                    )
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Column(
                                                          children: [
                                                            Row(
                                                              children: [
                                                                Text(cardModel[index]
                                                                    .name + '\n' +
                                                                    cardModel[index]
                                                                        .name,
                                                                  style: TextStyle(
                                                                      fontWeight: FontWeight
                                                                          .w500,
                                                                      color: Colors
                                                                          .black),),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(width: 50,),
                                                    Row(
                                                      children: [
                                                        DropdownButtonHideUnderline(
                                                          child: DropdownButton<
                                                              String>(
                                                            items: cardModel[index]
                                                                .grams.map((
                                                                String dropDownStringItem) {
                                                              return DropdownMenuItem<
                                                                  String>(
                                                                value: dropDownStringItem,
                                                                child: Text(
                                                                    dropDownStringItem),
                                                              );
                                                            }).toList(),
                                                            onChanged: (
                                                                String newValueSelected) {
                                                              setState(() {
                                                                cardModel[index]
                                                                    .selectedGrams =
                                                                    newValueSelected;
                                                              });
                                                            },
                                                            value: cardModel[index]
                                                                .selectedGrams,
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
                                                            onTap: () {
                                                              if (cardModel[index]
                                                                  .quantity >
                                                                  0) cardModel[index]
                                                                  .quantity--;
                                                              setState(() {
                                                                cardModel[index]
                                                                    .quantity =
                                                                    cardModel[index]
                                                                        .quantity;
                                                              });
                                                            },
                                                            child: Container(
                                                              height: 20,
                                                              width: 20,
                                                              color: Colors.grey,
                                                              child: Icon(
                                                                Icons.remove,
                                                                size: 10,),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets
                                                                .all(8),
                                                            child: Text(
                                                                cardModel[index]
                                                                    .quantity
                                                                    .toString()),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              cardModel[index]
                                                                  .quantity++;
                                                              setState(() {
                                                                cardModel[index]
                                                                    .quantity =
                                                                    cardModel[index]
                                                                        .quantity;
                                                              });
                                                            },
                                                            child: Container(
                                                              height: 20,
                                                              width: 20,
                                                              color: Colors.grey,
                                                              child: Icon(
                                                                Icons.add, size: 10,),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "\$${cardModel[index]
                                                                    .pricePerPacket}",
                                                                style: TextStyle(
                                                                    fontWeight: FontWeight
                                                                        .w400,
                                                                    color: AppColors
                                                                        .greenColor),)
                                                            ],
                                                          ),
                                                          Text("/packet",
                                                            style: TextStyle(
                                                                fontWeight: FontWeight
                                                                    .w400,
                                                                color: Colors.grey),)
                                                        ],
                                                      ),
                                                    ),
                                                    // SizedBox(width:20,),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              //builder: (context)=>register()
                                                            ));
                                                      },
                                                      child: Card(
                                                        child: Container(
                                                            height: 25.0,
                                                            width: 70.0,
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                  width: 1,
                                                                  color: Colors.blue,
                                                                ),
                                                                borderRadius: BorderRadius
                                                                    .all(
                                                                    Radius.circular(
                                                                        5))),
                                                            child: Center(child: Text(
                                                              "Add Cart",
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
                                          )
                                      ),
                                    ),
                                  );
                              },
                            ),
                          ),
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
