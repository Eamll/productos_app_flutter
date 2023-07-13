// To parse this JSON data, do
//
//     final product = productFromMap(jsonString);

import 'dart:convert';

class Product {
  Product({
    required this.available,
    required this.nombre,
    this.picture,
    required this.price,
    this.id,
  });

  bool available;
  String nombre;
  String? picture;
  double price;

  String? id;
  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        available: json["available"],
        nombre: json["nombre"],
        picture: json["picture"] ?? null,
        price: json["price"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "available": available,
        "nombre": nombre == null ? null : nombre,
        "picture": picture ?? null,
        "price": price,
      };

  Product copy() => Product(
        available: available,
        nombre: nombre,
        picture: picture,
        price: price,
        id: id,
      );
}
