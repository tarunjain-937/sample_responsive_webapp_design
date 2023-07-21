import 'package:flutter/material.dart';
import 'package:sample_responsive_webapp_design/responsive/desktopScaffold.dart';
import 'package:sample_responsive_webapp_design/responsive/mobileScaffold.dart';
import 'package:sample_responsive_webapp_design/responsive/responsive_layout.dart';
import 'package:sample_responsive_webapp_design/responsive/tabletScaffold.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "sample responsive webapp design",
      debugShowCheckedModeBanner: true,
      home: responsive_layout(
          mobileScaffold: mobileScaffold(),
          tabletScaffold: tabletScaffold(),
          desktopScaffold: desktopScaffold()),
    );
  }
}
