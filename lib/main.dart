import 'package:flutter/material.dart';
import 'package:plant_md/components/buttons/theme_button.dart';
import 'package:plant_md/home.dart';
import 'utils/theme.dart';

void main() {
  runApp(const PlantMd());
}

class PlantMd extends StatefulWidget {
  const PlantMd({super.key});

  @override
  State<PlantMd> createState() => _PlantMdState();
}

class _PlantMdState extends State<PlantMd> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: themeMode,
      theme:  ThemeData(
        colorSchemeSeed: colorSelected.color,
        useMaterial3: true,
        brightness: Brightness.light
      ),
      home:  PlantMdHome()
    );
  }


  ThemeMode themeMode = ThemeMode.light;
  ColorSelection colorSelected = ColorSelection.green;
  void changeThemeMode(bool useLightMode){
    setState(() {
      themeMode = useLightMode ? ThemeMode.light :ThemeMode.dark;
    });
  }
  void changeColor(int value){
    colorSelected = ColorSelection.values[value];
  }
}




