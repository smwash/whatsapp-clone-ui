import 'package:flutter/material.dart';

import 'charts.dart';

class ChartScreen extends StatefulWidget {
  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chartData.length,
      itemBuilder: (context, i) => Column(
        children: <Widget>[
          Divider(height: 10.0),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(chartData[i].imageUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  chartData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  chartData[i].time,
                  style: TextStyle(color: Colors.grey, fontSize: 20.0),
                ),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                chartData[i].message,
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
