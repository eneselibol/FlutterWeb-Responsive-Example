import 'package:flutter/material.dart';
import 'package:flutterwebresponsive/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Responsive',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ScreenSelection(),
    );
  }
}

class ScreenSelection extends StatelessWidget {
  const ScreenSelection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) {
      return DesktopScreen();
    } else if (Responsive.isTablet(context)) {
      return TabletScreen();
    } else {
      return MobileScreen();
    }
  }
}

class DesktopScreen extends StatelessWidget {
  const DesktopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text(
            "Desktop Screen",
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}

class TabletScreen extends StatelessWidget {
  const TabletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text(
            "Tablet Screen",
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}

class MobileScreen extends StatelessWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Text(
            "Mobile Screen",
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
