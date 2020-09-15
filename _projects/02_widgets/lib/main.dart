import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int tapCount = 0;

  @override
  Widget build(BuildContext context) {
    print("build");

    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: onPress,
            child: Text("Say Hello!"),
          ),
          Text("Button tapped: $tapCount"),
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                tapCount = 0;
              });
            },
          ),
        ],
      ),
    );
  }

  void onPress() {
    setState(() {
      tapCount = tapCount + 2;
    });
  }
}
