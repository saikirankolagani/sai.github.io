import 'package:flutter/material.dart';
import 'package:iflexweb_app/ui_widgets/appbar.dart';
import 'package:iflexweb_app/ui_widgets/side_navigation_menu.dart';
import 'package:iflexweb_app/utils/app_colors.dart';

import 'CardModel.dart';
class CategoriesPage extends StatefulWidget {
  final String productName;
  CategoriesPage(this.productName);

  @override
  _CategoriesPageState createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {

  var selectedgram;
  int counter=0;
  int newCounter=0;

  List order=[];
  List<CardModel> cardModel=[];
  @override
  void initState() {
    createCardList();
    super.initState();
  }
  List<String> images=[
    'images/potato.png',
    'images/smallonion.png',
    'images/c.png',
    'images/tomato.png',
    'images/brinjal.png',
    'images/palak.png',
    'images/o.png',
    'images/onion.png',
  ];
  List<String> name=[
    'Potato',
    'Garlic white',
    'Bell Peppers',
    'Red tamato',
    'Brinjal',
    'Fenugreek',
    'Oranges',
    'Onion',
  ];
  createCardList(){
    for(var i=0;i<8;i++){
      cardModel.add(CardModel(
          //name: "fruit $i",
          name: name[i],
          grams: new List()..addAll(["500g","250g","1kg","1.5kg"]),
          offerPercentage: i*10,
          pricePerPacket: 70*i,
          quantity: 0,
          imageUrl: images[i],
          selectedGrams:"500g"
      ));
    }
    setState(() {
      cardModel=cardModel;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body:Text("${widget.productName}"),
      body: SingleChildScrollView(
        child:Column(
          children: [
            /*Container(
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
            SizedBox(height:10,),
            Row(
              children: [
                SideNavigationMenu(),
                Container(
                  width: MediaQuery.of(context).size.width*0.79,
                  height: MediaQuery.of(context).size.height,
                  child:  Column(
                    children: [
                      SizedBox(height:20,),
                      Row(
                        children: [
                          Text('${widget.productName}'+' (30 items)', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
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
                            int widthDiv = 260;
                            int countRow = width ~/ widthDiv;
                            return GridView.count(
                                shrinkWrap: true,
                                // physics: ScrollPhysics(),
                                  crossAxisCount: countRow,
                                  childAspectRatio:0.80,
                                  mainAxisSpacing:5,
                                  crossAxisSpacing:5,
                                children: List.generate(cardModel.length, (index) => Card(
                                  child:Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(cardModel[index].offerPercentage.toString()+"%off",style:TextStyle(fontSize:14,fontWeight:FontWeight.w500,color:Colors.redAccent),),
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
                                            child:Image.asset(cardModel[index].imageUrl.toString()),
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
                                                      Text(cardModel[index].name.toString()+'\n'+cardModel[index].name.toString(),style:TextStyle(fontWeight:FontWeight.w500,color:Colors.black),),
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
                                                child: DropdownButton<String>(
                                                  items:cardModel[index].grams.map((String dropDownStringItem) {
                                                    return DropdownMenuItem<String>(
                                                      value: dropDownStringItem,
                                                      child: Text(dropDownStringItem),
                                                    );
                                                  }).toList(),
                                                  onChanged: (String newValueSelected) {
                                                    setState(() {
                                                      cardModel[index].selectedGrams=newValueSelected;
                                                    });
                                                  },
                                                  value: cardModel[index].selectedGrams,
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
                                                    if(cardModel[index].quantity>0)cardModel[index].quantity--;
                                                    setState(() {
                                                      cardModel[index].quantity=cardModel[index].quantity;
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
                                                  child: Text(cardModel[index].quantity.toString()),
                                                ),
                                                GestureDetector(
                                                  onTap: (){
                                                    cardModel[index].quantity++;
                                                    setState(() {
                                                      cardModel[index].quantity=cardModel[index].quantity;
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
                                                    Text("\$${cardModel[index].pricePerPacket}",style:TextStyle(fontWeight:FontWeight.w400,color:AppColors.greenColor),)
                                                  ],
                                                ),
                                                Text("/packet",style:TextStyle(fontWeight:FontWeight.w400,color:Colors.grey),)
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
                                                  height:25.0,
                                                  width:70.0,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        width:1,
                                                        color: Colors.blue,
                                                      ),
                                                      borderRadius: BorderRadius.all(Radius.circular(5))),
                                                  child: Center(child: Text("Add Cart",style: TextStyle(fontSize:10,fontWeight:FontWeight.w500 ,color:AppColors.blueColor,decoration:TextDecoration.none),))),
                                            ),
                                          ),
                                        ],
                                      )

                                    ],
                                  ),
                                )
                                ),
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
      ),
    );
  }
}
