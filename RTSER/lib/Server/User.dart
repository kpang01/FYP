class User {
  String? id;
  String? email;
  String? name;
  String? nickname;
  String? age;
  String? gender;
  String? race;
  String? password;
  String? otp;
  String? datereg;

  User(
      {this.id,
      this.email,
      this.name,
      this.nickname,
      this.age,
      this.gender,
      this.race,
      this.password,
      this.otp,
      this.datereg});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    name = json['name'];
    nickname = json['nickname'];
    age = json['age'];
    gender = json['gender'];
    race = json['race'];
    password = json['password'];
    otp = json['otp'];
    datereg = json['datereg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['email'] = email;
    data['name'] = name;
    data['nickname'] = nickname;
    data['age'] = age;
    data['gender'] = gender;
    data['race'] = race;
    data['password'] = password;
    data['otp'] = otp;
    data['datereg'] = datereg;
    return data;
  }
}
