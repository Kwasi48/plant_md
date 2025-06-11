import 'package:flutter/material.dart';
import 'components/wigets/Text.dart';


class PlantMdHome extends StatelessWidget {
  const PlantMdHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PlantMD'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              normalText("Welcome to PlantMD !")
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        label: Text('Take a picture'),
          icon: Icon(Icons.add_a_photo),),
    );
  }
}
