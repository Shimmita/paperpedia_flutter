import 'package:flutter/material.dart';
import 'package:paper_pedia/screen/splash_main.dart';

void main() => runApp(const PaperPediaMain());

class PaperPediaMain extends StatefulWidget {
  const PaperPediaMain({super.key});

  @override
  State<PaperPediaMain> createState() => _PaperPediaMainState();
}

class _PaperPediaMainState extends State<PaperPediaMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
          useMaterial3: true),
      home:const SplashMain(), //was splash
      title: "PaperPedia",
      debugShowCheckedModeBanner: true,
    );
  }
}