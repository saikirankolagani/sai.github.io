import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iflexweb_app/CardModel.dart';
import 'package:iflexweb_app/utils/app_colors.dart';
class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  int counter=0;
  int newCounter=0;
  int current_step =0;
  String selectedPayment='Credit/Debit card';
  @override
  Widget build(BuildContext context) {
    List<Step>my_steps=[
      Step(title:Row(git
        children: [
          Text('Sign In To Place Your Order'),
        ],
      ),
          content:Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Container(child:
              Row(
                children: [
                  Text('Don\'t want to save your details? Use'),
                  GestureDetector(
                      onTap:(){
                        showDialog(context: context,builder: (BuildContext context) {
                  return AlertDialog(
                    content:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Guest Checkout',style:TextStyle(color:AppColors.blueColor,fontSize:16,fontWeight:FontWeight.w500),),
                        SizedBox(height:10,),
                        Text('Please enter the Email id to receive the invoice',style:TextStyle(color:Colors.black45,fontSize:16,fontWeight:FontWeight.w400),),
                        SizedBox(height:10,),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          child: TextFormField(
                            decoration: InputDecoration(
                                border:OutlineInputBorder(),
                                hintText: 'Email ID',
                                labelText: 'Your Email'
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
                                      "Send Otp",
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
                      child: Text('Guest checkout ?',style:TextStyle(color:AppColors.blueColor,fontSize:14,),)),
                ],
              )),
              Row(
                children: [
                  Card(
                    child: GestureDetector(
                      onTap:(){
                        showDialog(context: context,builder: (BuildContext context) {
                          return AlertDialog(
                            content:Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Guest Checkout',style:TextStyle(color:AppColors.blueColor,fontSize:16,fontWeight:FontWeight.w500),),
                                SizedBox(height:10,),
                                Text('Please enter the Email id to receive the invoice',style:TextStyle(color:Colors.black45,fontSize:16,fontWeight:FontWeight.w400),),
                                SizedBox(height:10,),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.20,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border:OutlineInputBorder(),
                                        hintText: 'Email ID',
                                        labelText: 'Your Email'
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
                                              "Send Otp",
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
                      child: Container(
                          height:30.0,
                          width:90.0,
                          color:AppColors.blueColor,
                          child: Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    fontSize:14, fontWeight: FontWeight.w400, color:Colors.white, decoration: TextDecoration.none),))),
                    ),
                  ),
                ],
              )
            ],
          ),
          isActive:true ),
      Step(title:Row(
        children: [
          Text('Delivery Address'),
        ],
      ),
          content:Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              Text('Choose your delivery address from the address book'),
              Row(
                children: [
                  Card(
                    child: Container(
                        height:30.0,
                        width:120.0,
                        decoration: BoxDecoration(
                            border: Border
                                .all(
                              width: 1,
                              color: AppColors
                                  .blueColor,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: GestureDetector(
                          onTap:(){
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
                          child: Center(
                              child: Text(
                                "+ Add New Address",
                                style: TextStyle(
                                    fontSize:12,
                                    fontWeight: FontWeight.w400,color:AppColors.blueColor,decoration: TextDecoration.none),)),
                        )),
                  ),
                ],
              )
            ],
          ),isActive:true ),
      Step(title:Text('Delivery Options'),subtitle:Text('Choose your Availability time'),content:Text('process 2'),isActive:true ),
      Step(title:Text('Select Payment Options'),subtitle:Text('Select your payment method from the existing one or add new one'),content:Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.40,
            child:Card(
              child:SizedBox(
                height:50,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap:(){
                          setState(() {
                                selectedPayment='Credit/Debit card';
                          });
                        },
                          child: Text('Credit/Debit card',style:TextStyle(color:Colors.black,fontSize:14),)),
                    ),
                    VerticalDivider(
                      width:1,
                      thickness:1,
                      indent:10,
                      endIndent:10,
                      color:Colors.black,
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap:(){
                            setState(() {
                              selectedPayment='Net Banking';
                            });
                          },
                          child: Text('Net Banking',style:TextStyle(color:Colors.black,fontSize:14),)),
                    ),
                    VerticalDivider(
                      width:1,
                      thickness:1,
                      indent:10,
                      endIndent:10,
                      color:Colors.black,
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap:(){
                            setState(() {
                              selectedPayment='UPI';
                            });
                          },
                          child: Text('UPI',style:TextStyle(color:Colors.black,fontSize:14),)),
                    ),
                    VerticalDivider(
                      width:1,
                      thickness:1,
                      indent:10,
                      endIndent:10,
                      color:Colors.black,
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap:(){
                            setState(() {
                              selectedPayment='Wallet';
                            });
                          },
                          child: Text('Wallet',style:TextStyle(color:Colors.black,fontSize:14),)),
                    ),
                    VerticalDivider(
                      width:1,
                      thickness:1,
                      indent:10,
                      endIndent:10,
                      color:Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap:(){
                            setState(() {
                              selectedPayment='Cash on delivery';
                            });
                          },
                          child: Text('Cash on delivery',style:TextStyle(color:Colors.black,fontSize:14),)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (selectedPayment=='Credit/Debit card')
          Text('credit'),
          if (selectedPayment=='Net Banking')
          Text('netbanking'),
          if (selectedPayment=='UPI')
          Text('UPI'),
          if (selectedPayment=='Wallet')
          Text('Wallet'),
          if (selectedPayment=='Cash on delivery')
          Text('Cashon delivery')
        ],
      ),isActive:true ),
    ];





    return Scaffold(
      bottomNavigationBar:BottomAppBar(
        color:AppColors.blueColor,
        child:Row(
          children: [
            Text('2020 Sloka, All Rights Reserved',style:TextStyle(color:Colors.white,fontSize:16),),
          ],
        ),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: AppColors.blueColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20,10,10,10),
                    child: Text(
                      'Swadesh',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10,10,40,10),
                    child: Container(
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.call,
                                color: Colors.white,
                              ),
                              SizedBox(width:5,),
                              Text('1-800-234-5678', style: TextStyle(fontSize: 12, color: Colors.white),),
                            ],
                          ),
                          SizedBox(width:10,),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                              SizedBox(width:5,),
                              Text(
                                'New Jersy US',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:10,),
            SingleChildScrollView(
              child: Row(
                children: [
                  Text('Cart',style:TextStyle(fontSize:26,fontWeight:FontWeight.w500,color:Colors.black),),
                ],
              ),
            ),
            SizedBox(height:10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.60,
                  height:MediaQuery.of(context).size.height*0.60,
                  //color:Colors.yellow,
                  child: Stepper(
                    currentStep:this.current_step,
                    steps:my_steps,
                    type:StepperType.vertical,
                    onStepTapped:(step){
                      setState(() {
                        current_step=step;
                      });
                    },
                    onStepCancel:(){
                      setState(() {
                        if(current_step>0){
                          current_step = current_step-1;
                        }else{
                          current_step = 0;
                        }
                      });
                    },
                    onStepContinue:(){
                      setState(() {
                        if(current_step<my_steps.length -1){
                          current_step = current_step +1;
                        }else{
                          current_step = 0;
                        }
                      });
                    },
                  ),
                ),
                SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    height:MediaQuery.of(context).size.height*0.70,
                    //color:Colors.yellow,
                    child:Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Your Cart (4 items)',style:TextStyle(fontSize:22,fontWeight:FontWeight.w500,color:Colors.black),),
                                Row(
                                  children: [
                                    Text('Order Id: 4651Fsg',style:TextStyle(fontSize:14,fontWeight:FontWeight.w400,color:AppColors.yellowColor),),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
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
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            width:MediaQuery.of(context).size.width * 0.10,
                                                            height:MediaQuery.of(context).size.height*0.10,
                                                            child:Image.asset('images/medicine.png',fit:BoxFit.cover,),
                                                          ),
                                                          Row(children: [
                                                            Column(
                                                              children: [
                                                                Text('fresho cabbage',style:TextStyle(fontSize:14,fontWeight:FontWeight.w500,color: Colors.black),),
                                                                SizedBox(height:10,),
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
                                                              ],
                                                            ),
                                                          ],),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(children: [
                                                      Column(
                                                        children: [
                                                          CircleAvatar(
                                                            radius:20,
                                                            backgroundColor:Colors.white,
                                                            child:Icon(Icons.close,color:Colors.black,),
                                                          ),
                                                          SizedBox(height:5,),
                                                          Row(
                                                            children: [
                                                             Container(
                                                               color:Colors.blue,
                                                                 child: Padding(
                                                                   padding: const EdgeInsets.all(8.0),
                                                                   child: Text('\$30',style:TextStyle(fontSize:14,color:Colors.black54,),),
                                                                 )),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ],),
                                                  ],
                                                ),
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
                          SizedBox(height:20,),
                          Column(
                            children: [
                              Container(
                                width:MediaQuery.of(context).size.width * 0.40,
                                decoration: BoxDecoration(
                                 border: Border.all(width: 1, color: AppColors.yellowColor,),
                                 borderRadius: BorderRadius.all(Radius.circular(5))),
                                 child:Row(
                                   mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text('swadesh 45678',style:TextStyle(fontSize:16,color:Colors.black,fontWeight:FontWeight.w500),),
                                     Row(
                                       children: [
                                         Text('Coupon applied',style:TextStyle(fontSize:14,color:AppColors.yellowColor,fontWeight:FontWeight.w500),),
                                         CircleAvatar(
                                           radius:15,
                                           backgroundColor:Colors.white,
                                           child:Icon(Icons.close,color:Colors.black,),
                                         )
                                       ],
                                     )
                                   ],
                                 ),
                                ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Subtotal',style:TextStyle(color:Colors.black,fontSize:16,fontWeight:FontWeight.w500),),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(width: 1, color:Colors.black54,),
                                              borderRadius: BorderRadius.all(Radius.circular(5))),
                                          child:Text('\$2700',style:TextStyle(color:Colors.black,fontSize:16,),),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Delivery Charges',style:TextStyle(color:Colors.black,fontSize:16,fontWeight:FontWeight.w500),),
                                    Row(
                                      children: [
                                        Text('---',style:TextStyle(color:Colors.black,fontSize:16,),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Coupon Discount(Up To 50%)',style:TextStyle(color:Colors.green,fontSize:16,fontWeight:FontWeight.w500),),
                                    Row(
                                      children: [
                                        Text('-\$12',style:TextStyle(color:Colors.green,fontSize:16,),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Taxes',style:TextStyle(color:Colors.black,fontSize:16,fontWeight:FontWeight.w500),),
                                    Row(
                                      children: [
                                        Text('\$3',style:TextStyle(color:Colors.black,fontSize:16,),)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Card(
                                  child: Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Total',style:TextStyle(color:Colors.black,fontSize:22,fontWeight:FontWeight.w500),),
                                      Row(
                                        children: [
                                          Text('\$2700',style:TextStyle(color:Colors.black,fontSize:22,fontWeight:FontWeight.w500),)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
