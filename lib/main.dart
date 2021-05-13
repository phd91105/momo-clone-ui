import 'package:flutter/material.dart';
import 'package:momo_ui/screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
      theme: ThemeData.light().copyWith(
        hintColor: Color(0xff97a8a0),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
