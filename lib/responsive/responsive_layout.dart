import 'package:flutter/material.dart';
class responsive_layout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget desktopScaffold;

  responsive_layout({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.desktopScaffold}); //constructor

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth < 550){return mobileScaffold;}
      else if(constraints.maxWidth < 1100){return tabletScaffold;}
      else{ return desktopScaffold;}
    },);
  }
}
