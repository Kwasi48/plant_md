import 'package:flutter/material.dart';

enum ColorSelection{
  green('Green', Colors.green),
  red('Red', Colors.red),
  blue('Blue', Colors.blue);


   const ColorSelection(this.label, this.color);

   final String label;
   final Color color;

}


