class RegisterModel {
  int status;
  String message;
  Date date;

  RegisterModel({this.status, this.message, this.date});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    date = json['date'] != null ? new Date.fromJson(json['date']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.date != null) {
      data['date'] = this.date.toJson();
    }
    return data;
  }
}

class Date {
  String firstName;
  String lastName;
  String password;
  String email;
  String mobile;
  String cCode;
  String deviceType;
  String deviceToken;
  String deviceId;
  String uid;
  String userStatus;

  Date(
      {this.firstName,
        this.lastName,
        this.password,
        this.email,
        this.mobile,
        this.cCode,
        this.deviceType,
        this.deviceToken,
        this.deviceId,
        this.uid,
        this.userStatus});

  Date.fromJson(Map<String, dynamic> json) {
    firstName = json['first_name'];
    lastName = json['last_name'];
    password = json['password'];
    email = json['email'];
    mobile = json['mobile'];
    cCode = json['c_code'];
    deviceType = json['device_type'];
    deviceToken = json['device_token'];
    deviceId = json['device_id'];
    uid = json['uid'];
    userStatus = json['user_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['password'] = this.password;
    data['email'] = this.email;
    data['mobile'] = this.mobile;
    data['c_code'] = this.cCode;
    data['device_type'] = this.deviceType;
    data['device_token'] = this.deviceToken;
    data['device_id'] = this.deviceId;
    data['uid'] = this.uid;
    data['user_status'] = this.userStatus;
    return data;
  }
}
