import 'package:flutter/material.dart';
import 'package:flutter_kotlin/repository/platform_repository.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _repository = PlatformRepository();
  String colorResult = "0xFFCA2C92";

  changeColor(String color) async {
    colorResult = await _repository.changeColor(color);
    return colorResult;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse(colorResult)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/center.png',
            ),
            Divider(
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlutterLogo(
                        size: 30,
                      ),
                      Text(
                        "Flutter",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      changeColor("0xFF2196F3");
                    });
                  },
                ),
                RaisedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'images/kotlin_logo.png',
                        height: 30,
                      ),
                      Text(
                        "Kotlin",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  color: Colors.green,
                  onPressed: () {
                    setState(() {
                      // Here we are going to set the orange color
                      changeColor("0xFFE65100");
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
