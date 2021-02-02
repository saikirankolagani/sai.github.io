import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iflexweb_app/models/check_otp.dart';
import 'package:iflexweb_app/models/forget_password_model.dart';
import 'package:iflexweb_app/repo/auth_repo.dart';
import 'package:iflexweb_app/utils/app_colors.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

import 'home.dart';
class forgotpassword extends StatefulWidget {

  @override
  _forgotpasswordState createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  TextEditingController emailidController=TextEditingController();
  //TextEditingController otpController=TextEditingController();
  var emailid;
  @override
  var time =30;
  String otp;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState(){
    resendOTPStopWatch();
  }
  resendOTPStopWatch(){
    Future.delayed(Duration(seconds: 1),(){
      if(time>0) {
        setState(() {
          time = time - 1;
        });
        resendOTPStopWatch();
      }
    });
  }
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
                        child: Text('Trouble Logging In',style: TextStyle(fontSize:30,fontWeight:FontWeight.w500,color:AppColors.blueColor),),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,8,8,0),
                        child: Text('Enter your registered email id to receive',style: TextStyle(fontSize:20,fontWeight:FontWeight.w500,color: Colors.black26)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8,0,8,8),
                        child: Text('One time password (OTP)',style: TextStyle(fontSize:20,fontWeight:FontWeight.w500,color: Colors.black26)),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.all(60.0),
                        child: Form(
                          key: _formKey,
                          child: TextFormField(
                            controller:emailidController,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter your vaild email id';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              border:OutlineInputBorder(),
                              hintText: 'Enter your email id',
                              labelText: 'Your email'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width:400,
                          child: RaisedButton(
                            textColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Send OTP",style: TextStyle(fontSize:20,color: Colors.white)),
                            ),
                            color:AppColors.blueColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            onPressed: ()async{
                              if (_formKey.currentState.validate()){
                                Repo loginRepo = Repo();
                                ForgetPasswordModel loginmodel = await loginRepo.createforgetpassword(emailidController.text);
                                showDialog(context:context,builder:(BuildContext context){
                                  return AlertDialog(
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("Enter OTP",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500,color:AppColors.blueColor),),
                                        SizedBox(height: 10,),
                                        Text('Please check the OTP sent to your Email id',style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: Colors.black26),),
                                        SizedBox(height: 5,),
                                        Center(
                                          child: OTPTextField(
                                              length:4,
                                              width: MediaQuery.of(context).size.width*0.25,
                                              textFieldAlignment: MainAxisAlignment.spaceBetween,
                                              fieldWidth: 40,
                                              fieldStyle: FieldStyle.box,
                                              style: TextStyle(fontSize: 15),
                                              onCompleted: (pin) {
                                                otp=pin;
                                              }
                                          ),
                                        ),
                                        SizedBox(height: 20,),
                                        Text("Resend OTP in $time",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
                                        time==0?FlatButton(child: Text("Resend OTP",style:TextStyle(fontSize:14,fontWeight: FontWeight.w400,color:AppColors.blueColor)),
                                          onPressed: (){
                                            time=30;
                                            resendOTPStopWatch();
                                          },
                                        ) :Container(),
                                        SizedBox(height: 10,),
                                        Container(
                                          width: double.infinity,
                                          child: RaisedButton(
                                            textColor: Colors.white,
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("Login",style: TextStyle(fontSize:15,color: Colors.white)),
                                            ),
                                            color: Colors.lightGreen,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5.0),
                                            ),
                                            onPressed: ()async{
                                              Repo loginRepo = Repo();
                                              CheckOtp loginmodel = await loginRepo.createcheckotp(emailidController.text,otp);
                                              Navigator.push(context,MaterialPageRoute(
                                                builder: (context)=>home(),
                                              ));
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                              }
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
