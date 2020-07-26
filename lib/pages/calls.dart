import 'package:flutter/material.dart';
import 'callsinfo.dart';

class Callio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Calls(),
          Calls(),
          Calls(),
          Calls(),
          Calls(),
          Calls(),
          Calls(),
          Calls(),
        ],
      ),
    );
  }
}
