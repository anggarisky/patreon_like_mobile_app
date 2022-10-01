import 'package:flutter/material.dart';
import 'color.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  minimumSize: Size(327, 50),
  primary: yellow,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(50),
    ),
  ),
);
