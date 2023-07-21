import 'package:flutter/material.dart';
import 'package:sample_responsive_webapp_design/Constants/Constants.dart';
import '../Utils/myBox.dart';
import '../Utils/myTile.dart';

class tabletScaffold extends StatefulWidget {
  const tabletScaffold({Key? key}) : super(key: key);

  @override
  State<tabletScaffold> createState() => _tabletScaffoldState();
}

class _tabletScaffoldState extends State<tabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      drawer: myDrawer,
      backgroundColor: myDefaultBackground,
      body: Column(
        children: [

          /// 6 boxes on the top
          AspectRatio(// in responsive design "Aspect ratio"
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4,),
                itemBuilder: (context, index) {
                  return myBox();
                },),
            ),
          ),

          /// tiles below it
          Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context, index) {
                  return myTile();
                },))
        ],
      ),
    );
  }
}
