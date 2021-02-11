class ProfileUpdate {
  int status;
  String message;
  List<Data> data;

  ProfileUpdate({this.status, this.message, this.data});

  ProfileUpdate.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String id;
  String firstName;
  String uid;
  String lastName;
  String pPic;
  String email;
  String mobile;
  String cCode;
  String otpStatus;
  String uotp;
  String address2;
  String address1;
  String password;
  String userStatus;
  String deviceId;
  String deviceToken;
  String deviceType;
  String cd;

  Data(
      {this.id,
        this.firstName,
        this.uid,
        this.lastName,
        this.pPic,
        this.email,
        this.mobile,
        this.cCode,
        this.otpStatus,
        this.uotp,
        this.address2,
        this.address1,
        this.password,
        this.userStatus,
        this.deviceId,
        this.deviceToken,
        this.deviceType,
        this.cd});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    uid = json['uid'];
    lastName = json['last_name'];
    pPic = json['p_pic'];
    email = json['email'];
    mobile = json['mobile'];
    cCode = json['c_code'];
    otpStatus = json['otp_status'];
    uotp = json['uotp'];
    address2 = json['address_2'];
    address1 = json['address_1'];
    password = json['password'];
    userStatus = json['user_status'];
    deviceId = json['device_id'];
    deviceToken = json['device_token'];
    deviceType = json['device_type'];
    cd = json['cd'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['uid'] = this.uid;
    data['last_name'] = this.lastName;
    data['p_pic'] = this.pPic;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['c_code'] = this.cCode;
    data['otp_status'] = this.otpStatus;
    data['uotp'] = this.uotp;
    data['address_2'] = this.address2;
    data['address_1'] = this.address1;
    data['password'] = this.password;
    data['user_status'] = this.userStatus;
    data['device_id'] = this.deviceId;
    data['device_token'] = this.deviceToken;
    data['device_type'] = this.deviceType;
    data['cd'] = this.cd;
    return data;
  }
}
