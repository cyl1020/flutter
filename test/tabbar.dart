import 'package:flutter/material.dart';

class TabBarDiy extends StatefulWidget {
  TabBarDiy({Key key}) : super(key: key);

  @override
  _TabBarDiyState createState() => _TabBarDiyState();
}

class _TabBarDiyState extends State<TabBarDiy> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    //声明周期函数
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TabBar(
          // isScrollable: true,
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.label,
          tabs: [
            Tab(
              text: '流行',
            ),
            Tab(
              text: '新款',
            ),
            Tab(
              text: '精选',
            )
          ],
        )
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text('1'),
          Text('2'),
          Text('3'),
        ],
      ),
    );
  }
}
