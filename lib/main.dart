

import 'package:flutter/material.dart';

import 'features/pets_home/presentation/views/pets_view.dart';

void main() {
  runApp(const GetTheDesignAlive());
}

class GetTheDesignAlive extends StatelessWidget {
  const GetTheDesignAlive({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'BalsamiqSans',
      ),
      home:  PetsView(),
    );
  }
}

