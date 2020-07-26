import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                height: 200.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black,
                ),
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
                child: Icon(
                  Icons.calendar_today,
                  color: Colors.white,
                  size: 60.0,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
