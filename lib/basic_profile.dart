import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iflexweb_app/CardModel.dart';
import 'package:iflexweb_app/models/profile_update.dart';
import 'package:iflexweb_app/repo/auth_repo.dart';
import 'package:iflexweb_app/ui_widgets/appbar.dart';
import 'package:iflexweb_app/ui_widgets/profile_menu.dart';
import 'package:iflexweb_app/utils/app_colors.dart';

import 'home.dart';
class BasicProfile extends StatefulWidget {
  @override
  _BasicProfileState createState() => _BasicProfileState();
}

class _BasicProfileState extends State<BasicProfile> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailIdController = TextEditingController();
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
                Card(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            //color:Colors.grey,
                            width: MediaQuery.of(context).size.width * 0.30,
                            //height: MediaQuery.of(context).size.height,
                            child: Row(
                              children: [
                                Column(
                                  mainAxisAlignment:MainAxisAlignment.start,
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 20,),
                                    Row(
                                      children: [
                                        Text('Basic Profile',style:TextStyle(color:Colors.black,fontSize:22),),
                                      ],
                                    ),
                                    SizedBox(height:20,),
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.30,
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            controller:firstNameController,
                                            decoration: InputDecoration(
                                                border:OutlineInputBorder(),
                                                hintText: 'Stefani',
                                                labelText: 'First name'
                                            ),
                                          ),
                                          SizedBox(height:20,),
                                          TextFormField(
                                            controller:lastNameController,
                                            decoration: InputDecoration(
                                                border:OutlineInputBorder(),
                                                hintText: 'Williams',
                                                labelText: 'Last name'
                                            ),
                                          ),
                                          SizedBox(height:20,),
                                          TextFormField(
                                            controller:mobileController,
                                            decoration: InputDecoration(
                                                border:OutlineInputBorder(),
                                                hintText: '+41 64587890',
                                                labelText: 'Mobile No'
                                            ),
                                          ),
                                          SizedBox(height:20,),
                                          TextFormField(
                                            controller:emailIdController,
                                            decoration: InputDecoration(
                                                border:OutlineInputBorder(),
                                                hintText: 'stefani.williams@yahoo.com',
                                                labelText: 'Email ID'
                                            ),
                                          ),
                                          SizedBox(height:20,),
                                          Container(
                                            width: double.infinity,
                                            child: RaisedButton(
                                              textColor: Colors.white,
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text("Save Changes",
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w400)),
                                              ),
                                              color:AppColors.blueColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(5.0),
                                              ),
                                              onPressed: () async{
                                                Repo loginRepo = Repo();
                                                ProfileUpdate loginmodel = await loginRepo.createprofileUpdate(firstNameController.text,lastNameController.text,emailIdController.text,mobileController.text);
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context)=>home(),
                                                    ));
                                              },
                                            ),
                                          ),
                                          SizedBox(height:10,)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            //color:Colors.blue,
                            width: MediaQuery.of(context).size.width * 0.30,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: CircleAvatar(
                                    radius:80,
                                    backgroundColor:Colors.white,
                                    backgroundImage:AssetImage('images/profile.png',),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Card(child: Icon(Icons.edit_outlined,color:Colors.black,)),
                                      SizedBox(width:20,),
                                      Card(child: Icon(Icons.delete_outline_sharp,color:Colors.black,))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
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
