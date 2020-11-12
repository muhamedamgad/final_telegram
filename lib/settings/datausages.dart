import 'package:flutter/material.dart';
import 'package:final_telegram/settings/Wi-Fi.dart';
import 'package:final_telegram/settings/mobile.dart';
import 'package:final_telegram/settings/roaming.dart';

class DataUsage extends StatefulWidget {
  @override
  _DataUsageState createState() => _DataUsageState();
}

class _DataUsageState extends State<DataUsage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Mobile(),
          WiFi(),
          Roaming(),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Data Usage'),
        bottom: TabBar(
          controller: _tabController,
          onTap: (index) {},
          indicatorColor: Theme.of(context).canvasColor,
          indicatorSize: TabBarIndicatorSize.label,
          labelPadding: EdgeInsets.symmetric(vertical: 10),
          tabs: <Widget>[
            Text(
              'Mobile',
              style: TextStyle(fontSize: 17),
            ),
            Text(
              'Wi-Fi',
              style: TextStyle(fontSize: 17),
            ),
            Text(
              'Roaming',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
