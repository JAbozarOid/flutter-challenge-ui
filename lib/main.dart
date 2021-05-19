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

class TopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      color: colorPink,
      child: Material(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60.0)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
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
      ),
    );
  }
}

class PinkPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: MediaQuery.of(context).size.width,
      color: colorPurple,
      child: Material(
        color: colorPink,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60.0),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 30.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Today 5:30 PM',
                    style: TextStyle(fontSize: 12.0, color: Colors.white70),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Toga and Meditation for Begginers',
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50.0,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 15.0,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 3.0, color: Colors.white)),
                                child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundImage:
                                      ExactAssetImage('assets/sajad.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 3.0, color: Colors.white)),
                              child: CircleAvatar(
                                radius: 14.0,
                                backgroundImage:
                                    ExactAssetImage('assets/farid.jpg'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'join Farid, Sajad & 10 others',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LightPurple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: MediaQuery.of(context).size.width,
      color: colorDarkPurple,
      child: Material(
        color: colorPurple,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60.0),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 30.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Today 5:30 PM',
                    style: TextStyle(fontSize: 12.0, color: Colors.white70),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Practice French, English           and Chinese',
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50.0,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 15.0,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 3.0, color: Colors.white)),
                                child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundImage:
                                      ExactAssetImage('assets/jake.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 3.0, color: Colors.white)),
                              child: CircleAvatar(
                                radius: 14.0,
                                backgroundImage:
                                    ExactAssetImage('assets/omid.jpg'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'join Omid, Jake & 12 others',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DarkPurple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.0,
      width: MediaQuery.of(context).size.width,
      color: colorBlue,
      child: Material(
        color: colorDarkPurple,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60.0),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 30.0,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Today 6:00 PM',
                    style: TextStyle(fontSize: 12.0, color: Colors.white70),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Adobe XD Live Event in Iran',
                    style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 50.0,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 15.0,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 3.0, color: Colors.white)),
                                child: CircleAvatar(
                                  radius: 14.0,
                                  backgroundImage:
                                      ExactAssetImage('assets/sindre.jpg'),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 3.0, color: Colors.white)),
                              child: CircleAvatar(
                                radius: 14.0,
                                backgroundImage:
                                    ExactAssetImage('assets/musa.jpg'),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'join Sindre, Ali & 18 others',
                        style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
