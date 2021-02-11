import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iflexweb_app/ui_widgets/appbar.dart';
import 'package:iflexweb_app/ui_widgets/profile_menu.dart';
import 'package:iflexweb_app/utils/app_colors.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home.dart';
import 'models/change_password.dart';
import 'repo/auth_repo.dart';
class changepassword extends StatefulWidget {
  //var emailid;
  //changepassword({this.emailid});
  @override
  _changepasswordState createState() => _changepasswordState();
}
class _changepasswordState extends State<changepassword> {
  String emailid;
  loadSavedData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      emailid=preferences.get('Email');
    });
  }
 // var emailid;
 //_changepasswordState(this.emailid);
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController cpasswordcontroller = TextEditingController();
  TextEditingController currentpasswordcontroller = TextEditingController();

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
                SingleChildScrollView(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.78,
                    height:MediaQuery.of(context).size.height*0.90,
                    child:Card(
                      child:SingleChildScrollView(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Change Password',style:TextStyle(fontSize:22,fontWeight:FontWeight.w500,color:Colors.black),),
                                ),
                              ],
                            ),
                            SizedBox(height:30,),
                            // Row(
                            //   children: [
                            //     Padding(
                            //       padding: const EdgeInsets.all(8.0),
                            //       child: Text('Old Password',style:TextStyle(fontSize:16,fontWeight:FontWeight.w500,color:Colors.black),),
                            //     ),
                            //   ],
                            // ),
                            // SizedBox(height:10,),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    width:MediaQuery.of(context).size.width * 0.50,
                                    child: TextFormField(
                                      controller:currentpasswordcontroller,
                                      decoration: InputDecoration(
                                          border:OutlineInputBorder(),
                                          hintText: 'old password',
                                          labelText: 'Old Password'
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // SizedBox(height:10,),
                            // Row(
                            //   children: [
                            //     Padding(
                            //       padding: const EdgeInsets.all(8.0),
                            //       child: Text('New Password',style:TextStyle(fontSize:16,fontWeight:FontWeight.w500,color:Colors.black),),
                            //     ),
                            //   ],
                            // ),
                            SizedBox(height:20,),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    width:MediaQuery.of(context).size.width * 0.50,
                                    child: TextFormField(
                                      controller:passwordcontroller,
                                      decoration: InputDecoration(
                                          border:OutlineInputBorder(),
                                          hintText: 'new password',
                                          labelText: 'New Password'
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //SizedBox(height:10,),
                            // Row(
                            //   children: [
                            //     Padding(
                            //       padding: const EdgeInsets.all(8.0),
                            //       child: Text('Confirm Password',style:TextStyle(fontSize:16,fontWeight:FontWeight.w500,color:Colors.black),),
                            //     ),
                            //   ],
                            // ),
                            SizedBox(height:20,),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Container(
                                    width:MediaQuery.of(context).size.width * 0.50,
                                    child: TextFormField(
                                      controller:cpasswordcontroller,
                                      decoration: InputDecoration(
                                          border:OutlineInputBorder(),
                                          hintText: 'confirm password',
                                          labelText: 'Confirm Password'
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height:20,),
                            Padding(
                              padding: const EdgeInsets.all(60.0),
                              child: Container(
                                width: double.infinity,
                                child: RaisedButton(
                                  textColor: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Change Password",style: TextStyle(fontSize:22,color: Colors.white)),
                                  ),
                                  color:AppColors.blueColor,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  onPressed: ()async{
                                    await loadSavedData();
                                    print(emailid);
                                    Repo loginRepo = Repo();
                                    ChangePassword loginmodel = await loginRepo.createchangepassword(passwordcontroller.text,cpasswordcontroller.text,currentpasswordcontroller.text,emailid);
                                    Navigator.push(context,MaterialPageRoute(
                                      builder: (context)=>home(),
                                    ));
                                  },
                                ),
                              ),
                            ),
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
