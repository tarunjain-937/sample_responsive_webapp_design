import 'package:flutter/material.dart';
import 'package:sample_responsive_webapp_design/Constants/Constants.dart';
import 'package:sample_responsive_webapp_design/Utils/myBox.dart';
import 'package:sample_responsive_webapp_design/Utils/myTile.dart';

class mobileScaffold extends StatefulWidget {
  const mobileScaffold({Key? key}) : super(key: key);

  @override
  State<mobileScaffold> createState() => _mobileScaffoldState();
}

class _mobileScaffoldState extends State<mobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      /// Body of Mobile Scaffold
      body: Column(
        children: [

          /// 6 boxes on the top
          AspectRatio(// in responsive design "Aspect ratio"
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,),
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
