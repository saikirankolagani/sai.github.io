import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iflexweb_app/CardModel.dart';
import 'package:iflexweb_app/ui_widgets/appbar.dart';
import 'package:iflexweb_app/ui_widgets/side_navigation_menu.dart';
import 'package:iflexweb_app/utils/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'frequently_ordered.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

final List<String> imgList = [
  'images/Screenshot.png',
  'images/Screenshot.png',
  'images/Screenshot.png',
  'images/Screenshot.png',
  'images/Screenshot.png',
  'images/Screenshot.png'
];

class _homeState extends State<home>with SingleTickerProviderStateMixin {
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
  // void initState() {
  //   createCardList();
  //   super.initState();
  // }

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

  AnimationController animationController;
  bool _menuShown = false;

  @override
  void initState() {
    createCardList();

    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Animation opacityAnimation = Tween(begin: 0.0, end: 1.0).animate(animationController);
    if (_menuShown)
      animationController.forward();
    else
      animationController.reverse();
    return Scaffold(
        body: SingleChildScrollView(
          child: Stack(
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
                            child: GestureDetector(
                              onTap: (){
                                setState(() {

                                });
                              },
                              child: Text(
                                'Stefani Williams',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ),
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
                      Stack(
                        children: [
                          Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width * 0.79,
                                    height: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.56,
                                    child: CarouselSlider(
                                      options: CarouselOptions(
                                        aspectRatio: 2.0,
                                        enlargeCenterPage: true,
                                        scrollDirection: Axis.horizontal,
                                        autoPlay: true,
                                      ),
                                      items:imageSliders,

                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery
                                        .of(context)
                                        .size
                                        .width * 0.79,
                                    height: MediaQuery
                                        .of(context)
                                        .size
                                        .height * 0.44,
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Container(
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    Icon(
                                                      Icons.remove,
                                                      color: AppColors.yellowColor,
                                                      size: 30,
                                                    ),
                                                    Text(
                                                      'Frequently Ordered',
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            frequentlyOrder()
                                                    ));
                                              },
                                              child: Container(
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        'View all',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w500,
                                                            color: Colors
                                                                .deepOrangeAccent),
                                                      ),
                                                      Icon(
                                                        Icons.arrow_forward,
                                                        color: Colors.deepOrangeAccent,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          thickness: 1.5,
                                          indent: 10,
                                          endIndent: 20,
                                        ),
                                        Expanded(
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            // physics: NeverScrollableScrollPhysics(),
                                            itemCount: cardModel.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: SingleChildScrollView(
                                                    child: Container(
                                                      width: MediaQuery
                                                          .of(context)
                                                          .size
                                                          .width * 0.15,
                                                      child: Card(
                                                        child: Column(
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment: MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Row(
                                                                  children: [
                                                                    Text(
                                                                      cardModel[index]
                                                                          .offerPercentage
                                                                          .toString() +
                                                                          "%off",
                                                                      style: TextStyle(
                                                                          fontSize: 14,
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          color: Colors
                                                                              .redAccent),),
                                                                    //SizedBox(width: 150,)
                                                                  ],
                                                                ),
                                                                Icon(Icons.favorite,
                                                                  color: Colors.grey,)
                                                              ],
                                                            ),
                                                            Center(
                                                                child:
                                                                //SizedBox(width: 60,),
                                                                Container(
                                                                  height: 100,
                                                                  width: 150,
                                                                  child: Image.asset(
                                                                      cardModel[index]
                                                                          .imageUrl
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
                                                                            Text(
                                                                              cardModel[index]
                                                                                  .name +
                                                                                  '\n' +
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
                                                                        hint: Text(
                                                                            'grams'),
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
                                                                          color: Colors
                                                                              .grey[300],
                                                                          child: Icon(
                                                                            Icons
                                                                                .remove,
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
                                                                          color: Colors
                                                                              .grey[300],
                                                                          child: Icon(
                                                                            Icons.add,
                                                                            size: 10,),
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
                                                                            color: Colors
                                                                                .grey),)
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
                                                                              "Add to Cart",
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
                                ],
                              )),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.remove,
                            color: AppColors.yellowColor,
                            size: 30,
                          ),
                          Text('New Arrivals', style: TextStyle(fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.5,
                        indent: 10,
                        endIndent: 20,
                      ),
                      SingleChildScrollView(
                        child: OrientationBuilder(
                          builder: (context, or) {
                            double width = MediaQuery
                                .of(context)
                                .size
                                .width;
                            int widthDiv = 250;
                            int countRow = width ~/ widthDiv;
                            return
                              Expanded(
                                child: GridView(
                                  shrinkWrap: true,
                                  physics: ScrollPhysics(),
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: countRow,
                                    childAspectRatio: 0.95,
                                    mainAxisSpacing: 5,
                                    crossAxisSpacing: 5,
                                  ),
                                  children: List.generate(
                                      cardModel.length, (index) =>
                                      GestureDetector(
                                        onTap: () {
                                          showDialog(context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  content: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize: MainAxisSize
                                                          .max,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment
                                                              .spaceBetween,
                                                          children: [
                                                            Container(
                                                              child: Row(
                                                                  children: [
                                                                    Text('Home',
                                                                      style: TextStyle(
                                                                          fontSize: 14,
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          color: Colors
                                                                              .black),),
                                                                    SizedBox(
                                                                      width: 15,),
                                                                    Icon(
                                                                      Icons.circle,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 10,),
                                                                    SizedBox(
                                                                      width: 8,),
                                                                    Text('Grocery',
                                                                      style: TextStyle(
                                                                          fontSize: 14,
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          color: Colors
                                                                              .black),),
                                                                    SizedBox(
                                                                      width: 15,),
                                                                    Icon(
                                                                      Icons.circle,
                                                                      color: Colors
                                                                          .black,
                                                                      size: 10,),
                                                                    SizedBox(
                                                                      width: 8,),
                                                                    Text(
                                                                      'Breakfast',
                                                                      style: TextStyle(
                                                                          fontSize: 14,
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          color: Colors
                                                                              .black),),
                                                                    SizedBox(
                                                                      width: 15,),
                                                                    Icon(
                                                                      Icons.circle,
                                                                      color: AppColors
                                                                          .blueColor,
                                                                      size: 10,),
                                                                    SizedBox(
                                                                      width: 8,),
                                                                    Text(
                                                                      'ProductName',
                                                                      style: TextStyle(
                                                                          fontSize: 14,
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          color: AppColors
                                                                              .blueColor),),
                                                                  ]
                                                              ),
                                                            ),
                                                            Row(
                                                              children: [
                                                                CircleAvatar(
                                                                  radius: 15,
                                                                  backgroundColor: Colors
                                                                      .black12,
                                                                  child:Icon(Icons.close,color:Colors.black,)
                                                                )
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                        Divider(
                                                          thickness: 1,
                                                          indent: 10,
                                                          endIndent: 10,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Container(
                                                              height: 300,
                                                              width: 250,
                                                              child: Column(
                                                                children: [
                                                                  Row(
                                                                    children: [
                                                                      Image(
                                                                        width: 250,
                                                                        height: 200,
                                                                        image: AssetImage(
                                                                            'images/medicine.png'),)
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Image(
                                                                        width: 83.3,
                                                                        height: 100,
                                                                        image: AssetImage(
                                                                            'images/medicine.png'),),
                                                                      Image(
                                                                        width: 83.3,
                                                                        height: 100,
                                                                        image: AssetImage(
                                                                            'images/medici.png'),),
                                                                      Image(
                                                                        width: 83.3,
                                                                        height: 100,
                                                                        image: AssetImage(
                                                                            'images/medic.png'),),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              //height:300,
                                                              width: 600,
                                                              //color:Colors.black12,
                                                              child: Column(
                                                                children: [
                                                                  Row(
                                                                    mainAxisAlignment: MainAxisAlignment
                                                                        .spaceBetween,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child: Text(
                                                                          'Loreal',
                                                                          style: TextStyle(
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight
                                                                                  .w400,
                                                                              color: AppColors
                                                                                  .yellowColor),),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child: Container(
                                                                          child: Row(
                                                                            children: [
                                                                              CircleAvatar(
                                                                                backgroundColor: Colors
                                                                                    .white,
                                                                                radius: 15,
                                                                                child: Icon(
                                                                                  Icons
                                                                                      .favorite,
                                                                                  color: Colors
                                                                                      .grey,),
                                                                              ),
                                                                              SizedBox(
                                                                                width: 15,),
                                                                              CircleAvatar(
                                                                                backgroundColor: Colors
                                                                                    .white,
                                                                                radius: 15,
                                                                                child: Icon(
                                                                                  Icons
                                                                                      .share,
                                                                                  color: Colors
                                                                                      .grey,),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child: Text(
                                                                          'Lorem ipsum dolor sit amet, consectetur''\n' +
                                                                              'adipising elit,sed do eiusmod tempor incididunt',
                                                                          style: TextStyle(
                                                                              color: Colors
                                                                                  .black),),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,),
                                                                  Row(
                                                                    children: [
                                                                      Container(
                                                                        child: Padding(
                                                                          padding: const EdgeInsets
                                                                              .all(
                                                                              8.0),
                                                                          child: Text(
                                                                            'Expiry Date:31/12/2021',
                                                                            style: TextStyle(
                                                                                color: AppColors
                                                                                    .blueColor,
                                                                                fontSize: 10),),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5,),
                                                                  Row(
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child: DropdownButtonHideUnderline(
                                                                          child: DropdownButton<
                                                                              String>(
                                                                            items: cardModel[index]
                                                                                .grams
                                                                                .map((
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
                                                                              setState(() {
                                                                                cardModel[index]
                                                                                    .selectedGrams =
                                                                                    newValueSelected;
                                                                              });
                                                                            },
                                                                            value: cardModel[index]
                                                                                .selectedGrams,
                                                                            hint: Text(
                                                                                'grams'),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .all(
                                                                            8.0),
                                                                        child: Container(
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
                                                                                  color: Colors
                                                                                      .grey[300],
                                                                                  child: Icon(
                                                                                    Icons
                                                                                        .remove,
                                                                                    size: 10,),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: const EdgeInsets
                                                                                    .all(
                                                                                    8),
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
                                                                                  color: Colors
                                                                                      .grey[300],
                                                                                  child: Icon(
                                                                                    Icons
                                                                                        .add,
                                                                                    size: 10,),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Row(
                                                                    mainAxisAlignment: MainAxisAlignment
                                                                        .spaceBetween,
                                                                    children: [
                                                                      GestureDetector(
                                                                        onTap: () {
                                                                          Navigator
                                                                              .push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                //builder: (context)=>register()
                                                                              ));
                                                                        },
                                                                        child: Padding(
                                                                          padding: const EdgeInsets
                                                                              .all(
                                                                              8.0),
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
                                                                                      "Add to Cart",
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
                                                                      ),
                                                                      Row(
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsets
                                                                                .all(
                                                                                8.0),
                                                                            child: Text(
                                                                              'Price:\$200',
                                                                              style: TextStyle(
                                                                                  color: Colors
                                                                                      .black,
                                                                                  fontSize: 14,
                                                                                  fontWeight: FontWeight
                                                                                      .w500),),
                                                                          )
                                                                        ],
                                                                      )
                                                                    ],
                                                                  ),

                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons.remove,
                                                              color: AppColors
                                                                  .yellowColor,
                                                              size: 30,
                                                            ),
                                                            Text('Related Products',
                                                              style: TextStyle(
                                                                  fontSize: 18,
                                                                  fontWeight: FontWeight
                                                                      .bold,
                                                                  color: Colors
                                                                      .black),
                                                            ),
                                                          ],
                                                        ),
                                                        Divider(
                                                          thickness: 1.5,
                                                          indent: 10,
                                                          endIndent: 20,
                                                        ),
                                                        Container(
                                                          height: 270,
                                                          width: 1000,
                                                          child: Expanded(
                                                            child: ListView.builder(
                                                              shrinkWrap: true,
                                                              scrollDirection: Axis
                                                                  .horizontal,
                                                              // physics: NeverScrollableScrollPhysics(),
                                                              itemCount: cardModel
                                                                  .length,
                                                              itemBuilder: (
                                                                  BuildContext context,
                                                                  int index) {
                                                                return GestureDetector(
                                                                  onTap: () {},
                                                                  child: Padding(
                                                                    padding: const EdgeInsets
                                                                        .all(8.0),
                                                                    child: SingleChildScrollView(
                                                                      child: Container(
                                                                        width: MediaQuery
                                                                            .of(
                                                                            context)
                                                                            .size
                                                                            .width *
                                                                            0.15,
                                                                        child: Card(
                                                                          child: Column(
                                                                            children: [
                                                                              Row(
                                                                                mainAxisAlignment: MainAxisAlignment
                                                                                    .spaceBetween,
                                                                                children: [
                                                                                  Row(
                                                                                    children: [
                                                                                      Text(
                                                                                        cardModel[index]
                                                                                            .offerPercentage
                                                                                            .toString() +
                                                                                            "%off",
                                                                                        style: TextStyle(
                                                                                            fontSize: 14,
                                                                                            fontWeight: FontWeight
                                                                                                .w500,
                                                                                            color: Colors
                                                                                                .redAccent),),
                                                                                      //SizedBox(width: 150,)
                                                                                    ],
                                                                                  ),
                                                                                  Icon(
                                                                                    Icons
                                                                                        .favorite,
                                                                                    color: Colors
                                                                                        .grey,)
                                                                                ],
                                                                              ),
                                                                              Center(
                                                                                  child:
                                                                                  //SizedBox(width: 60,),
                                                                                  Container(
                                                                                    height: 100,
                                                                                    width: 150,
                                                                                    child: Image
                                                                                        .asset(
                                                                                        cardModel[index]
                                                                                            .imageUrl
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
                                                                                              Text(
                                                                                                cardModel[index]
                                                                                                    .name +
                                                                                                    '\n' +
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
                                                                                  SizedBox(
                                                                                    width: 50,),
                                                                                  Row(
                                                                                    children: [
                                                                                      DropdownButtonHideUnderline(
                                                                                        child: DropdownButton<
                                                                                            String>(
                                                                                          items: cardModel[index]
                                                                                              .grams
                                                                                              .map((
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
                                                                                            setState(() {
                                                                                              cardModel[index]
                                                                                                  .selectedGrams =
                                                                                                  newValueSelected;
                                                                                            });
                                                                                          },
                                                                                          value: cardModel[index]
                                                                                              .selectedGrams,
                                                                                          hint: Text(
                                                                                              'grams'),
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
                                                                                            color: Colors
                                                                                                .grey[300],
                                                                                            child: Icon(
                                                                                              Icons
                                                                                                  .remove,
                                                                                              size: 10,),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: const EdgeInsets
                                                                                              .all(
                                                                                              8),
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
                                                                                            color: Colors
                                                                                                .grey[300],
                                                                                            child: Icon(
                                                                                              Icons
                                                                                                  .add,
                                                                                              size: 10,),
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
                                                                                        Text(
                                                                                          "/packet",
                                                                                          style: TextStyle(
                                                                                              fontWeight: FontWeight
                                                                                                  .w400,
                                                                                              color: Colors
                                                                                                  .grey),)
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                  // SizedBox(width:20,),
                                                                                  GestureDetector(
                                                                                    onTap: () {
                                                                                      Navigator
                                                                                          .push(
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
                                                                                                "Add to Cart",
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
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        )


                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }
                                          );
                                        },
                                        child: Card(
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
            ],
          ),
        ));
  }
}


final List<Widget> imageSliders = imgList.map((item) =>
    Banner(itemm:item)
     )
    .toList();
class Banner extends StatefulWidget {
  final itemm;
  Banner({this.itemm});

  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<Banner> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: GestureDetector(
                onTap: (){
                  print('tapped');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => frequentlyOrder()),
                  );
                },
                child: Stack(
                  children: <Widget>[
                    Image.asset(widget.itemm, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(0, 0, 0, 0),
                              Color.fromARGB(0, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
// padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
// child: Text(
//   'No. ${imgList.indexOf(item)} image',
//   style: TextStyle(
//     color: Colors.white,
//     fontSize: 20.0,
//     fontWeight: FontWeight.bold,
//   ),
// ),
                      ),
                    ),
                  ],
                ),
              )
          ),
        ),
      ],
    );



  }
}






class _ShapedWidget extends StatelessWidget {
  _ShapedWidget({this.onlyTop = false});
  final double padding = 4.0;
  final bool onlyTop;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Material(
          clipBehavior: Clip.antiAlias,
          shape:
          _ShapedWidgetBorder(borderRadius: BorderRadius.all(Radius.circular(padding)), padding: padding),
          elevation: 4.0,
          child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(padding).copyWith(bottom: padding * 2),
              child: onlyTop ? SizedBox(width: 150.0, height: 20.0,) :  SizedBox(width: 150.0, height: 250.0,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('person'),
                      onTap:(){
                        print('print person');
                      },
                    ), ListTile(
                      leading: Icon(Icons.person),
                      title: Text('person'),
                      onTap:(){
                        print('print person');
                      },
                    ), ListTile(
                      leading: Icon(Icons.person),
                      title: Text('person'),
                      onTap:(){
                        print('print person');
                      },
                    ), ListTile(
                      leading: Icon(Icons.person),
                      title: Text('person'),
                      onTap:(){
                        print('print person');
                      },
                    ),
                  ],
                ),
                /* child: onlyTop ? SizedBox(width: 150.0, height: 20.0,) :  SizedBox(width: 150.0, height: 250.0,

             child: Center(child: Text('ShapedWidget'),),),*/
              )
          ),
        ));
  }
}

class _ShapedWidgetBorder extends RoundedRectangleBorder {
  _ShapedWidgetBorder({
    @required this.padding,
    side = BorderSide.none,
    borderRadius = BorderRadius.zero,
  }) : super(side: side, borderRadius: borderRadius);
  final double padding;

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return Path()
      ..moveTo(rect.width - 8.0 , rect.top)
      ..lineTo(rect.width - 20.0, rect.top - 16.0)
      ..lineTo(rect.width - 32.0, rect.top)
      ..addRRect(borderRadius
          .resolve(textDirection)
          .toRRect(Rect.fromLTWH(rect.left, rect.top, rect.width, rect.height - padding)));
  }
}
