import 'dart:convert';
import 'package:tmandtyback/model/userType.dart';
import 'package:tmandtyback/tmandtyback.dart';

User userFromJson(String jsonUser) => User.fromJson(json.decode(jsonUser));

@Table(name: "Usuario")
class User {

  final int id;
  final String user;
  final String password;
  final String mail;
  final String fullName;
  final String imageUrl;
  final UserType userType;

  //Constructor del Usuario
  User({this.id, this.user, this.password, this.mail, this.fullName, this.imageUrl, this.userType});

  @override
  String toString() => json.encode(toJson());

  factory User.fromJson(var json) => User(
    id:       json["id"] as int,
    user:     json["Login"] as String,
    password: json["Contrasena"] as String,
    mail:     json["Correo"] as String,
    fullName: json["Nombre"] as String,
    imageUrl: json["UrlImage"] as String,
    userType: UserType.fromJson(json["TipoUsuario"])
  );

  Map<String, dynamic> toJson() => {
    "id":         id,
    "Login":      user,
    "Contrasena": password,
    "Correo":     mail,
    "Nombre":     fullName,
    "UrlImage":   imageUrl,
    "TipoUsuario":userType     
  };
  
}