import 'package:flutter/material.dart';

class myTile extends StatelessWidget {
  const myTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          color: Colors.grey[600],
        height: 80,
      ),
    );
  }
}
