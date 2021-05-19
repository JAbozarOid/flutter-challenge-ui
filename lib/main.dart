import 'package:challenge_ui/dark_purple.dart';
import 'package:challenge_ui/light_purple_widget.dart';
import 'package:challenge_ui/pink_part_widget.dart';
import 'package:challenge_ui/top_part_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  return runApp(MyApp());
}

Color colorBlue = Color.fromRGBO(143, 146, 181, 1.0);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(fontFamily: 'Quicksand'),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlue,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add,color: Colors.black,),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [TopPart(), PinkPart(), LightPurple(), DarkPurple()],
        ),
      ),
    );
  }
}