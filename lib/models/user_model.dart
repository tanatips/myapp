class UserModel{
  int? no;
  final int? id;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
  final String? picture;
  final String? createdBy;
  final String? createdDate;
  final String? updatedBy;
  final String? updatedDate;
  final String? status;

  UserModel({ this.id, this.username, this.firstName, this.lastName, this.email, this.password,this.picture, this.createdBy, this.createdDate, this.updatedBy, this.updatedDate,this.status });

  factory UserModel.fromJson(Map<String,dynamic> json){
    return UserModel (
      id: json['id'] as int,
      username: json['username'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      picture: json['picture'] as String,
      status: json['status'] as String,
      createdBy: json['createdBy'] as String,
      createdDate: json['createdDate'] as String,
      updatedBy: json['createdBy'] as String,
      updatedDate: json['createdDate'] as String
    );
  }

}