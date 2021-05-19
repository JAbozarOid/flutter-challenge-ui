import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  return runApp(MyApp());
}

Color colorPink = Color.fromRGBO(217, 108, 157, 1.0);
Color colorPurple = Color.fromRGBO(132, 61, 179, 1.0);
Color colorDarkPurple = Color.fromRGBO(19, 2, 38, 1.0);
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
      body: Stack(
        children: [TopPart()],
      ),
    );
  }
}

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      color: colorPink,
      child: Material(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60.0)),
        child: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundImage: ExactAssetImage('assets/abozar.png'),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "You",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.pink)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.trending_up,
                          size: 28.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Trending",
                      style: TextStyle(),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey[300])),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Icon(
                          Icons.favorite_border,
                          size: 28.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Health",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
