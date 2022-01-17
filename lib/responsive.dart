import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // Ekran genişliği 1100'den fazlaysa Masaüstü(Bilgisayar) görünümü olarak kabul edilir.
    if (_size.width >= 1100) {
      return desktop;
    }
    // Ekran genişliği 1100'den az 850'den fazla ise Tablet görünümü olarak kabul edilir.
    else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Ekran genişliği 850'den az ile Mobil görünümü olarak kabul edilir.
    else {
      return mobile;
    }
  }
}
