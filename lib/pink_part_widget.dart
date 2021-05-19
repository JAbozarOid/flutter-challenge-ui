import 'package:flutter/material.dart';

Color colorPink = Color.fromRGBO(217, 108, 157, 1.0);
Color colorPurple = Color.fromRGBO(132, 61, 179, 1.0);


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
                    'Flutter and Android for Experts',
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