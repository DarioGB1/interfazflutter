import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

List<Widget> carouselItems = [
  Card(
    elevation: 2,
    child: Column(children: [
      Image.asset(
        'assets/ropa.jpg',
        height: 200,
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "HYLON FULL TIP HOODIE",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("\$120.00"),
      )
    ]),
  ),
  Card(
    elevation: 2,
    child: Column(children: [
      Image.asset(
        'assets/ropa2.jpg',
        height: 200,
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "HYLON FULL TIP HOODIE",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("\$120.00"),
      )
    ]),
  ),
  Card(
    elevation: 2,
    child: Column(children: [
      Image.asset(
        'assets/ropa3.jpg',
        height: 200,
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "HYLON FULL TIP HOODIE",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text("\$120.00"),
      )
    ]),
  )
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FEAR OF GOD',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'FEAR OF GOD'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(widget.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 36, letterSpacing: 4)),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                width: 300,
                child: SearchBar(
                  leading: Icon(Icons.search),
                )),
            Padding(
                padding: EdgeInsets.all(16.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: SizedBox(
                      width: 300,
                      height: 200,
                      //size: Size.fromRadius(200),
                      child: Image.asset(
                        'assets/hoodie.png',
                        fit: BoxFit.cover,
                        width: 300,
                      ),
                    ))),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              width: 700,
              child: Text(
                "OUTERWEAR",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
                width: 400,
                child: CarouselSlider(
                    items: carouselItems,
                    options: CarouselOptions(
                        height: 300,
                        autoPlay: true,
                        autoPlayCurve: Curves.easeInOut,
                        autoPlayAnimationDuration: Duration(milliseconds: 500),
                        aspectRatio: 16 / 9)))
          ],
        ),
      ),
    );
  }
}
