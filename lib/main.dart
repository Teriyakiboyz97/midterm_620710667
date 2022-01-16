import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MIDTERM',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/bg.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'PIG WEIGHT',
                        style: TextStyle(fontSize: 50.0, color: Colors.pink),
                      ),
                      Text(
                        'CALCULATOR',
                        style: TextStyle(fontSize: 50.0, color: Colors.pink),
                      ),
                      Image.asset(
                        'assets/images/pig.png',
                        height: 200.0,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Text('LENGTH(cm)'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 800,
              right: 800,
              bottom: 50,
            ),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white.withOpacity(0),
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Text('GIRTH(cm)'),
          ),
          Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
                left: 800,
                right: 800,
              ),
              child: TextField(
                textAlign: TextAlign.center,
                controller: _controller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0),
                  border: UnderlineInputBorder(),
                ),
              )),
          Padding(
              padding: const EdgeInsets.only(
                bottom: 300,
              ),
              child: Center(
                  child: ElevatedButton(
                child: Text('CALCULATE'),
                onPressed: () {},
              )))
        ]),
      ),
    ));
  }
}
