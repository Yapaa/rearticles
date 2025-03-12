import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;
  ResponsiveLayout({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold,
  });

  static isMobile(BuildContext context) =>
    MediaQuery.sizeOf(context).width < 904;

  static isTablet(BuildContext context) =>
    MediaQuery.sizeOf(context).width < 1280 &&
    MediaQuery.sizeOf(context).width >= 904;

  static isDesktop(BuildContext context) =>
    MediaQuery.sizeOf(context).width >= 1200;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    if (size.width >= 1280) {
      return desktopScaffold;
    }

    else if (size.width >= 904 && tabletScaffold != null) {
      return tabletScaffold;
    }

    else {
      return mobileScaffold;
    }
  }
}
