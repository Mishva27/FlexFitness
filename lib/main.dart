// ignore_for_file: unused_import

import 'package:flexfitness/view/on_boarding/on_boarding_view.dart';
import 'package:flexfitness/view/on_boarding/started_view.dart';
import 'package:flutter/material.dart';

import 'common/color_extension.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlexFitness',
      theme: ThemeData(
        primaryColor: TColor.primaryColor1,
        fontFamily: "Poppins"
      ),
      home: const StartedView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
