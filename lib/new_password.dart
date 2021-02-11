import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iflexweb_app/models/password_update.dart';
import 'package:iflexweb_app/repo/auth_repo.dart';
import 'package:iflexweb_app/utils/app_colors.dart';
import 'main.dart';
class newpassword extends StatefulWidget {
  var emailid;
  newpassword({this.emailid});
  @override
  _newpasswordState createState() => _newpasswordState(emailid);
}

class _newpasswordState extends State<newpassword> {
  var emailid;
  _newpasswordState(this.emailid);
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController cpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              width:  MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height ,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child:SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 50,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('New Password',style: TextStyle(fontSize:30,fontWeight:FontWeight.w500,color:AppColors.blueColor),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,8,8,0),
                        child: Text('Use min 4 alphabets use min 2 numbers and use',style: TextStyle(fontSize:20,fontWeight:FontWeight.w500,color: Colors.black26)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,0,8,8),
                        child: Text(' at least 2 special characters',style: TextStyle(fontSize:20,fontWeight:FontWeight.w500,color: Colors.black26)),
                      ),
                      SizedBox(height: 60,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60,0,60,0),
                        child: TextFormField(
                          controller:passwordcontroller,
                          decoration: InputDecoration(
                              border:OutlineInputBorder(),
                              hintText: 'name.surname@gmail.com',
                              labelText: 'New Password'
                          ),
                        ),
                      ),
                      SizedBox(height:30,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60,0,60,0),
                        child: TextFormField(
                          controller:cpasswordcontroller,
                          decoration: InputDecoration(
                              border:OutlineInputBorder(),
                              hintText: 'name.surname@gmail.com',
                              labelText: 'Re-enter New Password'
                          ),
                        ),
                      ),
                      SizedBox(height:30,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60,0,60,0),
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
                              print(emailid);
                              print(passwordcontroller.text);
                              print(cpasswordcontroller.text);
                              Repo loginRepo = Repo();
                              PasswordUpdate loginmodel = await loginRepo.createpasswordupdate( emailid.toString(),passwordcontroller.text,cpasswordcontroller.text);
                              Navigator.push(context,MaterialPageRoute(
                                builder: (context)=>login(),
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
            SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width/2,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image:DecorationImage(
                        image:AssetImage('images/assortment.png'),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
