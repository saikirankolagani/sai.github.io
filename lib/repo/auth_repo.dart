import 'dart:convert';
import 'package:http/http.dart';
import 'package:iflexweb_app/models/change_password.dart';
import 'package:iflexweb_app/models/check_otp.dart';
import 'package:iflexweb_app/models/forget_password_model.dart';
import 'package:iflexweb_app/models/login_model.dart';
import 'package:iflexweb_app/models/password_update.dart';
import 'package:iflexweb_app/models/profile_update.dart';
import 'package:iflexweb_app/models/register_model.dart';
import 'package:iflexweb_app/utils/urls.dart';

class Repo {
  Future<LoginModel> login(email,password) async{
      Map<String, String> reqBody ={
        "username":email,
        "devicetoken":"11jhbjjxddwkjwq dkcjde",
        "devicetype":"ios",
        "deviceid":"12345678",
        "password":password,
      };
      Response response = await post(
          Urls.login,
          body: json.encode(reqBody),
          headers: {
            "Accept": "application/json",
            "Content-Type": "application/json",
            "Api-key":"827ccb0eea8a706c4c34a16891f84e7b",
          },
          encoding: Encoding.getByName("utf-8")
      );
      print(response.statusCode.toString());
      print('body${response.body.toString()}');

        return LoginModel.fromJson(json.decode(response.body));

  }


  Future<RegisterModel> createRegistration(firstname,lastname,phonenumber,emailid,password) async{
    try {
      Map<String, String> reqBody = {
        "first_name":firstname,
        "last_name":lastname,
        "email":emailid,
        "mobile":phonenumber,
        "devicetoken":"11jhbjjxddwkjwq dkcjde",
        "devicetype":"ios",
        "deviceid":"12345678",
        "password":password,
        "c_code":"91"
      };
      Response response = await post(
          Urls.register,
          body: json.encode(reqBody),
          headers: {
            "Accept":"Application/json",
            "Content-Type": "Application/json",
            "API-KEY": "827ccb0eea8a706c4c34a16891f84e7b"
          },
          encoding: Encoding.getByName("utf-8")
      );
      print(response.statusCode.toString());
      print('body${response.body.toString()}');
      if (response.statusCode == 200) {
        final String responseString = response.body;
        return RegisterModel.fromJson(json.decode(responseString));
      } else {
        print(response.body);
      }
    }
    catch(e){
      print(e);

    }
  }


  Future<ForgetPasswordModel> createforgetpassword(emailid) async{
    try {
      Map<String, String> reqBody = {
        "email":emailid,
      };
      Response response = await post(
          Urls.forgetpassword,
          body: json.encode(reqBody),
          headers: {
            "Accept":"Application/json",
            "Content-Type": "Application/json",
            "API-KEY": "827ccb0eea8a706c4c34a16891f84e7b"
          },
          encoding: Encoding.getByName("utf-8")
      );
      print(response.statusCode.toString());
      print('body${response.body.toString()}');
      if (response.statusCode == 200) {
        final String responseString = response.body;
        return ForgetPasswordModel.fromJson(json.decode(responseString));
      } else {
        print(response.body);
      }
    }
    catch(e){
      print(e);

    }
  }


  Future<CheckOtp> createcheckotp(emailid,otp) async{
    try {
      Map<String, String> reqBody = {
        "email":emailid,
        "otp":otp
      };
      Response response = await post(
          Urls.checkotp,
          body: json.encode(reqBody),
          headers: {
            "Accept":"Application/json",
            "Content-Type": "Application/json",
            "API-KEY": "827ccb0eea8a706c4c34a16891f84e7b"
          },
          encoding: Encoding.getByName("utf-8")
      );
      print(response.statusCode.toString());
      print('body${response.body.toString()}');
      if (response.statusCode == 200) {
        final String responseString = response.body;
        return CheckOtp.fromJson(json.decode(responseString));
      } else {
        print(response.body);
      }
    }
    catch(e){
      print(e);

    }
  }


  Future<PasswordUpdate> createpasswordupdate(emailid,password,cpassword) async{
    try {
      Map<String, String> reqBody = {
        "email":emailid,
        "password":password,
        "cpassword":cpassword
      };
      Response response = await post(
          Urls.passwordupdate,
          body: json.encode(reqBody),
          headers: {
            "Accept":"Application/json",
            "Content-Type": "Application/json",
            "API-KEY": "827ccb0eea8a706c4c34a16891f84e7b"
          },
          encoding: Encoding.getByName("utf-8")
      );
      print(response.statusCode.toString());
      print('body${response.body.toString()}');
      if (response.statusCode == 200) {
        final String responseString = response.body;
        return PasswordUpdate.fromJson(json.decode(responseString));
      } else {
        print(response.body);
      }
    }
    catch(e){
      print(e);

    }
  }


  Future<ChangePassword> createchangepassword(password,cpassword,currentpassword,emailid) async{
    try {
      Map<String, String> reqBody = {
        "password":password,
        "cpassword":cpassword,
        "curentpassword":currentpassword,
        "email":emailid,
        "uid":""
      };
      Response response = await post(
          Urls.changepassword,
          body: json.encode(reqBody),
          headers: {
            "Accept":"Application/json",
            "Content-Type": "Application/json",
            "API-KEY": "827ccb0eea8a706c4c34a16891f84e7b"
          },
          encoding: Encoding.getByName("utf-8")
      );
      print(response.statusCode.toString());
      print('body${response.body.toString()}');
      if (response.statusCode == 200) {
        final String responseString = response.body;
        return ChangePassword.fromJson(json.decode(responseString));
      } else {
        print(response.body);
      }
    }
    catch(e){
      print(e);

    }
  }

  Future<ProfileUpdate> createprofileUpdate(firstName,lastName,email,mobile) async{
    try {
      Map<String, String> reqBody = {
        "first_name":firstName,
        "last_name":lastName,
        "email":email,
        "mobile":mobile,
        "uid":"210120103649"
      };
      Response response = await post(
          Urls.updateProfile,
          body: json.encode(reqBody),
          headers: {
            "Accept":"Application/json",
            "Content-Type": "Application/json",
            "API-KEY": "827ccb0eea8a706c4c34a16891f84e7b"
          },
          encoding: Encoding.getByName("utf-8")
      );
      print(response.statusCode.toString());
      print('body${response.body.toString()}');
      if (response.statusCode == 200) {
        final String responseString = response.body;
        return ProfileUpdate.fromJson(json.decode(responseString));
      } else {
        print(response.body);
      }
    }
    catch(e){
      print(e);

    }
  }
















}