import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iflexweb_app/ui_widgets/profile_menu.dart';
import 'package:iflexweb_app/utils/app_colors.dart';


class faq extends StatefulWidget {
  @override
  _faqState createState() => _faqState();
}

class _faqState extends State<faq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            SizedBox(height:20,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileMenu(),
                Container(
                  width: MediaQuery.of(context).size.width * 0.82,
                  child: Column(
                    children: [
                      SizedBox(height:20,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25,8,0,8),
                            child: Text('Frequently asked Questions',style:TextStyle(fontSize:22,fontWeight:FontWeight.w500,color:Colors.black),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.80,
                            child: Column(
                              children: <Widget>[
                                SizedBox(height:20.0),
                                ExpansionTile(
                                  title: Text('1.How to request a quote for a particular product ?',),
                                  children: <Widget>[
                                    ListTile(
                                      title: Column(
                                        mainAxisAlignment:MainAxisAlignment.start,
                                        crossAxisAlignment:CrossAxisAlignment.start,
                                        children: [
                                          Text('* you need to particular product page and click on leave a message,'),
                                          Text('* And then leave a message to that particular seller of the product regarding your query,'),
                                          Text('* You\'ll receive a message instantly or maximum with in a day'),
                                          Text('* You can request a quote to the seller either by mesage or through email'),
                                        ],
                                      ),
                                    )
                                  ],
                                ), ExpansionTile(
                                  title: Text(
                                    '2.what buyers I can reach on iflex ?',
                                  ),
                                  children: <Widget>[
                                    ListTile(
                                      title: Text('data'),
                                    )
                                  ],
                                ), ExpansionTile(
                                  title: Text(
                                    '3.will I help setting up my business on the platform ?',
                                  ),
                                  children: <Widget>[
                                    ListTile(
                                      title: Text('data'),
                                    )
                                  ],
                                ), ExpansionTile(
                                  title: Text(
                                    '4.why iflex is booming now ?',
                                  ),
                                  children: <Widget>[
                                    ListTile(
                                      title: Text('data'),
                                    )
                                  ],
                                ), ExpansionTile(
                                  title: Text(
                                    '5.what is the idea behind iflex ?',
                                  ),
                                  children: <Widget>[
                                    ListTile(
                                      title: Text('data'),
                                    )
                                  ],
                                ), ExpansionTile(
                                  title: Text(
                                    '6.How do I become a seller too ?',
                                  ),
                                  children: <Widget>[
                                    ListTile(
                                      title: Text('data'),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}