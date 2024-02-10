import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String cityName = 'London';
  final Color backgroundColor = Color.fromARGB(255, 84, 152, 225);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: const Text('London'),
              onTap: () {
                setState(() {
                  cityName = 'London';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('New York'),
              onTap: () {
                setState(() {
                  cityName = 'New York';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Los Angeles'),
              onTap: () {
                setState(() {
                  cityName = 'Los Angeles';
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(cityName),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              stops: <double>[0.25, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: <Color>[
                backgroundColor,
                backgroundColor
                    .withRed(backgroundColor.red + 40)
                    .withGreen(backgroundColor.green + 20)
                    .withBlue(backgroundColor.blue - 10),
              ],
            ),
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('17°', style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold)),
                        Text('Mostly Cloudy', style: const TextStyle(fontSize: 18)),
                        Text('19°/8° | 10%  Feels like 17°',
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                              fontSize: 18,
                            ))
                      ],
                    ),
                  )
                ],
              ),
              Card(
                shape: ShapeBorder.lerp(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  0.5,
                ),
                elevation: 2,
                color: backgroundColor.withAlpha(150),
                margin: EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: const <Widget>[
                          Text('14:00', style: TextStyle(fontSize: 17, color: Colors.white)),
                          SizedBox(height: 10),
                          Icon(
                            Icons.cloud,
                            color: Colors.white,
                            size: 40,
                          ),
                          Text('19°', style: TextStyle(fontSize: 17, color: Colors.white)),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Icon(Icons.water_drop_sharp, color: Colors.white, size: 17),
                              Text('10%', style: TextStyle(fontSize: 17, color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: const <Widget>[
                          Text('17:00', style: TextStyle(fontSize: 17, color: Colors.white)),
                          SizedBox(height: 10),
                          Icon(
                            Icons.sunny,
                            color: Colors.white,
                            size: 40,
                          ),
                          Text('19°', style: TextStyle(fontSize: 17, color: Colors.white)),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Icon(Icons.water_drop_sharp, color: Colors.white, size: 17),
                              Text('5%', style: TextStyle(fontSize: 17, color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: const <Widget>[
                          Text('20:00', style: TextStyle(fontSize: 17, color: Colors.white)),
                          SizedBox(height: 10),
                          Icon(
                            Icons.snowing,
                            color: Colors.white,
                            size: 40,
                          ),
                          Text('18°', style: TextStyle(fontSize: 17, color: Colors.white)),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Icon(Icons.water_drop_sharp, color: Colors.white, size: 17),
                              Text('15%', style: TextStyle(fontSize: 17, color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: const <Widget>[
                          Text('23:00', style: TextStyle(fontSize: 17, color: Colors.white)),
                          SizedBox(height: 10),
                          Icon(
                            Icons.cloud,
                            color: Colors.white,
                            size: 40,
                          ),
                          Text('16°', style: TextStyle(fontSize: 17, color: Colors.white)),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Icon(Icons.water_drop_sharp, color: Colors.white, size: 17),
                              Text('20%', style: TextStyle(fontSize: 17, color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: const <Widget>[
                          Text('23:00', style: TextStyle(fontSize: 17, color: Colors.white)),
                          SizedBox(height: 10),
                          Icon(
                            Icons.cloud,
                            color: Colors.white,
                            size: 40,
                          ),
                          Text('16°', style: TextStyle(fontSize: 17, color: Colors.white)),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Icon(Icons.water_drop_sharp, color: Colors.white, size: 17),
                              Text('20%', style: TextStyle(fontSize: 17, color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                shape: ShapeBorder.lerp(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  0.5,
                ),
                elevation: 2,
                color: backgroundColor.withAlpha(150),
                margin: EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text('Air AQI: 42 - fair', style: const TextStyle(fontSize: 20, color: Colors.white)),
                      LinearProgressIndicator(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        minHeight: 5,
                        value: 0.42,
                        backgroundColor: Colors.white,
                        valueColor: const AlwaysStoppedAnimation<Color>(Colors.orange),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Column(
                            children: const <Widget>[
                              Text('SO2',
                                  style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
                              Text('10', style: TextStyle(fontSize: 17, color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: const <Widget>[
                              Text('NO2',
                                  style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
                              Text('40', style: TextStyle(fontSize: 17, color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: const <Widget>[
                              Text('PM10',
                                  style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
                              Text('20', style: TextStyle(fontSize: 17, color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: const <Widget>[
                              Text('PM2.5',
                                  style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
                              Text('10', style: TextStyle(fontSize: 17, color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: const <Widget>[
                              Text('O3',
                                  style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
                              Text('60', style: TextStyle(fontSize: 17, color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: const <Widget>[
                              Text('CO',
                                  style: TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold)),
                              Text('4400', style: TextStyle(fontSize: 17, color: Colors.white)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shape: ShapeBorder.lerp(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  0.5,
                ),
                elevation: 2,
                color: backgroundColor.withAlpha(150),
                margin: EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      CustomPaint(
                        painter: CurvedLinePainter(progress: 0.9),
                        size: const Size(400, 100),
                      ),
                      Divider(color: Colors.white, thickness: 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('7:23', style: TextStyle(fontSize: 17, color: Colors.white)),
                              Text('Sunrise', style: TextStyle(fontSize: 17, color: Colors.white)),
                            ],
                          ),
                          Column(
                            children: [
                              Text('17:23', style: TextStyle(fontSize: 17, color: Colors.white)),
                              Text('Sunset', style: TextStyle(fontSize: 17, color: Colors.white)),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Card(
                shape: ShapeBorder.lerp(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  0.5,
                ),
                elevation: 2,
                color: backgroundColor.withAlpha(150),
                margin: EdgeInsets.all(10.0),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Today',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.water_drop_sharp,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                '20%',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.sunny,
                                color: Colors.white,
                                size: 30,
                              ),
                              SizedBox(width: 20),
                              Icon(Icons.snowing, color: Colors.white, size: 30),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('18°', style: TextStyle(fontSize: 20, color: Colors.white)),
                              SizedBox(width: 20),
                              Text('8°', style: TextStyle(fontSize: 20, color: Colors.white))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Today', style: TextStyle(fontSize: 20, color: Colors.white)),
                          Row(
                            children: [
                              Icon(Icons.water_drop_sharp, color: Colors.white, size: 30),
                              Text('20%', style: TextStyle(fontSize: 20, color: Colors.white)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.sunny, color: Colors.white, size: 30),
                              SizedBox(width: 20),
                              Icon(Icons.snowing, color: Colors.white, size: 30),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('18°', style: TextStyle(fontSize: 20, color: Colors.white)),
                              SizedBox(width: 20),
                              Text('8°', style: TextStyle(fontSize: 20, color: Colors.white))
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Today', style: TextStyle(fontSize: 20, color: Colors.white)),
                          Row(children: [
                            Icon(Icons.water_drop_sharp, color: Colors.white, size: 30),
                            Text('20%', style: TextStyle(fontSize: 20, color: Colors.white)),
                          ]),
                          Row(children: [
                            Icon(Icons.sunny, color: Colors.white, size: 30),
                            SizedBox(width: 20),
                            Icon(Icons.snowing, color: Colors.white, size: 30),
                          ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('18°', style: TextStyle(fontSize: 20, color: Colors.white)),
                              SizedBox(width: 20),
                              Text('8°', style: TextStyle(fontSize: 20, color: Colors.white))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                Card(
                  shape: ShapeBorder.lerp(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    0.5,
                  ),
                  elevation: 2,
                  color: backgroundColor.withAlpha(150),
                  margin: EdgeInsets.all(10.0),
                  child: Padding(
                    padding: EdgeInsets.all(50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Wind', style: TextStyle(fontSize: 20, color: Colors.white)),
                        Text('10 km/h', style: TextStyle(fontSize: 20, color: Colors.white))
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: ShapeBorder.lerp(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    0.5,
                  ),
                  elevation: 2,
                  color: backgroundColor.withAlpha(150),
                  margin: EdgeInsets.all(10.0),
                  child: Padding(
                    padding: EdgeInsets.all(50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Humidity', style: TextStyle(fontSize: 20, color: Colors.white)),
                        Text(
                          '47%',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
              Row(
                children: [
                  Card(
                    shape: ShapeBorder.lerp(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      0.5,
                    ),
                    elevation: 2,
                    color: backgroundColor.withAlpha(150),
                    margin: EdgeInsets.all(10.0),
                    child: Padding(
                      padding: EdgeInsets.all(50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Pressure', style: TextStyle(fontSize: 20, color: Colors.white)),
                          Text(
                            '1006.4 mb',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Card(
                    shape: ShapeBorder.lerp(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                      0.5,
                    ),
                    elevation: 2,
                    color: backgroundColor.withAlpha(150),
                    margin: EdgeInsets.all(10.0),
                    child: Padding(
                      padding: EdgeInsets.all(40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Visibility', style: TextStyle(fontSize: 20, color: Colors.white)),
                          Text(
                            'Unlimited',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
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

class CurvedLinePainter extends CustomPainter {
  CurvedLinePainter({required this.progress});
  double progress;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke;

    final Paint progressPaint = Paint()
      ..color = Colors.yellowAccent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    final double radius = size.height;
    final double center = size.width / 2;
    final double sweepAngle = math.pi * progress;

    // Draw background arc
    canvas.drawArc(Rect.fromCircle(center: Offset(center, radius), radius: radius), math.pi, math.pi, false, paint);

    // Draw progress arc
    canvas.drawArc(
      Rect.fromCircle(center: Offset(center, radius), radius: radius),
      math.pi,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(CurvedLinePainter oldDelegate) {
    return false;
  }
}
