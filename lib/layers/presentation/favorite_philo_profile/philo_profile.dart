import 'package:filo_master/layers/domain/models/philosopher_model.dart';
import 'package:flutter/material.dart';

class PhiloProfile extends StatefulWidget {
  PhilosopherModel philosopher;
    PhiloProfile({super.key, required this.philosopher});

  @override
  State<PhiloProfile> createState() => _PhiloProfileState();
}

class _PhiloProfileState extends State<PhiloProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Image.asset(widget.philosopher.image)
        ],
      ),
    ));
  }
}