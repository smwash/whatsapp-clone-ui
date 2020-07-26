import 'package:flutter/material.dart';
import 'package:whatsapp/pages/btmnav.dart';
import 'package:whatsapp/pages/calls.dart';
import 'package:whatsapp/pages/camera.dart';
import 'package:whatsapp/pages/chartScreen.dart';
import 'package:whatsapp/pages/status.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff005F53),
          elevation: 1.5,
          title: Text('WhatsApp'),
          actions: <Widget>[
            Icon(Icons.search),
            SizedBox(width: 12.0),
            Icon(Icons.more_vert),
            SizedBox(width: 12.0),
          ],
          bottom: TabBar(
            // isScrollable: true,
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'CHATS',
                icon: Icon(Icons.phone_in_talk),
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Camera(),
            ChartScreen(),
            Status(),
            Callio(),
          ],
        ),
        bottomNavigationBar: BtmNav(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xff005F53),
          onPressed: null,
          child: Icon(Icons.message, size: 28.0),
        ),
      ),
    );
  }
}
