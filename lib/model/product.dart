import 'package:flutter/material.dart';

class Product {
  String sku;
  String name;
  String price;
  String brand;
  String description;
  String image;

  Product({
    @required this.sku,
    @required this.name,
    @required this.price,
    @required this.brand,
    this.description,
    @required this.image,
  });
}
