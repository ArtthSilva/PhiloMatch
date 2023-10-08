import 'package:filo_master/layers/presentation/home/select-philosopher/philosopher_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const PhilosopherScreen(),
         
      },
    ),
  );
}
