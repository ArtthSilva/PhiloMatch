// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PhilosopherModel {
  String name;
  int yearBirth;
  int yearDeath;
  String country;
  String image;
   List<Color> color;

  PhilosopherModel({
    required this.name,
    required this.yearBirth,
    required this.yearDeath,
    required this.country,
    required this.image,
    required this.color,
    
  });
}

final List<PhilosopherModel> philosopher = [
  PhilosopherModel(
    name: 'Immanuel Kant',
    yearBirth: 1724,
    yearDeath: 1804,
    country: 'Germany',
    image: 'assets/images/Kant.jpg',
    color: const [Color(0xFFFF3868), Color(0xFFFFB49A)],
  ),
  PhilosopherModel(
    name: 'Georg Hegel',
    yearBirth: 1770,
    yearDeath: 1831,
    country: 'Germany',
    image: 'assets/images/hegel.jpg',
     color: const [Color(0xFF736EFE), Color(0xFF62E4EC)],
  ),
];
