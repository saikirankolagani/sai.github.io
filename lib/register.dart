import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:iflexweb_app/models/register_model.dart';
import 'package:iflexweb_app/repo/auth_repo.dart';
import 'package:iflexweb_app/utils/app_colors.dart';

import 'home.dart';
class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  TextEditingController firstnameController=TextEditingController();
  TextEditingController lastnameController= TextEditingController();
  TextEditingController phonenumberController=TextEditingController();
  TextEditingController emailidController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  bool _showPassword = false;
  bool _checkBoxVal = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              width:  MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height ,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(70,20,0,8),
                            child: Text('Register',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color:AppColors.blueColor),),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50,10,50,10),
                      child: TextFormField(
                        controller: firstnameController,
                        decoration: InputDecoration(
                            border:OutlineInputBorder(),
                            hintText: 'Stefani',
                            labelText: 'First name'
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50,10,50,10),
                      child: TextFormField(
                        controller: lastnameController,
                        decoration: InputDecoration(
                            border:OutlineInputBorder(),
                            hintText: 'Williams',
                            labelText: 'Last name'
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50,10,50,10),
                      child: TextFormField(
                        controller:phonenumberController,
                        decoration: InputDecoration(
                            border:OutlineInputBorder(),
                            hintText: '+41 68547890',
                            labelText: 'Mobile No'
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50,10,50,10),
                      child: TextFormField(
                        controller: emailidController,
                        decoration: InputDecoration(
                            border:OutlineInputBorder(),
                            hintText: 'stefani.williams@yahoo.com',
                            labelText: 'Email ID'
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50,10,50,10),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          controller:passwordController,
                          obscureText: !_showPassword,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.remove_red_eye,
                                color:
                                _showPassword ? Colors.blue : Colors.grey,
                              ),
                              onPressed: () {
                                setState(
                                        () => _showPassword = !_showPassword);
                              },
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Password',
                            labelText: 'Password',
                            ),
                          ),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50,10,50,10),
                      child: Container(
                        width: double.infinity,
                        child: TextFormField(
                          obscureText: !_showPassword,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.remove_red_eye,
                                color:
                                _showPassword ? Colors.blue : Colors.grey,
                              ),
                              onPressed: () {
                                setState(
                                        () => _showPassword = !_showPassword);
                              },
                            ),
                            border: OutlineInputBorder(),
                            hintText: 'Confirm Password',
                            labelText: 'Confirm Password',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50,10,0,10),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                onChanged: (bool value) {
                                  setState(() => this._checkBoxVal = value);
                                },
                                value: this._checkBoxVal,
                              ),
                              Text('I agree to the '),
                            ],
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          //builder: (context) =>forgotpassword()
                                      )
                                  );
                                },
                                child: Text(
                                  "Terms & Privacy Policy",
                                  //textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color:AppColors.blueColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                      child: Container(
                        width: double.infinity,
                        child: RaisedButton(
                          textColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Register",
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
                            RegisterModel loginmodel = await loginRepo.createRegistration(firstnameController.text,lastnameController.text,phonenumberController.text,emailidController.text,passwordController.text);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  //builder: (context)=>home(),
                                ));
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Already have an account? ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54,
                                  )),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context)=>home()
                                      ));
                                },
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color:AppColors.blueColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width:  MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height ,
              decoration: BoxDecoration(
                  image:DecorationImage(
                      image:AssetImage('images/neonbrand.png'),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
