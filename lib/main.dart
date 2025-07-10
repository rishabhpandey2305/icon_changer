import 'package:flutter/material.dart';

const String festival = String.fromEnvironment(
  'FESTIVAL',
  defaultValue: 'default',
);

String getFestivalIcon() {
  switch (festival) {
    case 'diwali':
      return 'assets/icons/diwali.jpg';
    case 'holi':
      return 'assets/icons/holi.jpg';
    default:
      return 'assets/icons/default.jpg';
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String icon = getFestivalIcon();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Festival App',
      home: Scaffold(
        appBar: AppBar(title: Text("Festival Theme App")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Current Festival: $festival",
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Image.asset(icon, height: 500, width: 500),
            ],
          ),
        ),
      ),
    );
  }
}
