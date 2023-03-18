//Creando las propiedades para usuario

class UserModel {
  int? id;
  String? username;
  String? email;
  String? password;
  String? nombre;

  UserModel({this.id, this.username, this.email, this.password, this.nombre});

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      username: json['username'],
      email: json['email'],
      password: json['password'],
      nombre: json['nombre'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'email': email,
      'password': password,
      'nombre': nombre,
    };
  }
}
