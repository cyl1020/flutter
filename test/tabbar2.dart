import 'package:flutter/material.dart';

class TabBarDiy extends StatefulWidget {
  TabBarDiy({Key key}) : super(key: key);

  @override
  _TabBarDiyState createState() => _TabBarDiyState();
}

class _TabBarDiyState extends State<TabBarDiy>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollViewController;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: NestedScrollView(
            controller: _scrollViewController,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    pinned: true,
                    floating: true,
                    expandedHeight: 280,
                    flexibleSpace: FlexibleSpaceBar(
                      collapseMode: CollapseMode.pin,
                      background: Container(
                        //头部整个背景颜色
                        height: double.infinity,
                        color: Color(0xffcccccc),
                      ),
                    ),
                    bottom: TabBar(controller: _tabController, tabs: [
                      Tab(text: '流行'),
                      Tab(text: '新款'),
                      Tab(text: '精选'),
                    ]))
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [
                Text('1'),
                Text('2'),
                Text('3'),
              ],
            )));
  }
}
