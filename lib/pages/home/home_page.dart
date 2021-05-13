import 'package:flutter/material.dart';
import 'package:flutter_shop/api/index.dart';
import 'package:flutter_shop/pages/home/childCpn/home_grid.dart';

import 'childCpn/home_swiper.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  // var homeMultiData;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   getHomeMultiData().then((value) {
  //     setState(() {
  //       homeMultiData = value;
  //     });
  //     print(value["data"]["recommend"]["list"]);
  //   });
  // }
  //滚动的控制器
  ScrollController _scrollController;
  // 选项卡控制器
  TabController _tabController;
  //  初始化滑动器
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController(initialScrollOffset: 0.0);
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('首页')),
        // body: Column(
        //   children: [
        //     SwiperDiy(swiperDataList: homeMultiData["data"]["banner"]["list"],)
        //   ],
        // )
        //Flutter提供了FutureBuilder来进行处理,FutureBuilder可以很容易的得到当前Widget的状态,并选择在加载数据时显示的内容.以及在可以使用时显示的内容.
        body: FutureBuilder(
          future: getHomeMultiData(),
          builder: (context, snap) {
            if (snap.hasData) {
              return NestedScrollView(
                controller: _scrollController,
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return <Widget>[
                    SliverAppBar(
                      backgroundColor: Colors.yellowAccent,
                      //吸顶
                      pinned: true,
                      floating: true,
                      expandedHeight: 620,
                      flexibleSpace: FlexibleSpaceBar(
                        collapseMode: CollapseMode.pin,
                        background: Container(
                          height: double.infinity,
                          color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              SwiperDiy(
                                  swiperDataList: snap.data["data"]["banner"]
                                      ["list"]),
                              GridDiy(
                                  gridList: snap.data["data"]["recommend"]
                                      ["list"]),
                              Container(
                                width: double.infinity,
                                height: 244,
                                child: Image.asset('images/recommend_bg.jpg',
                                    fit: BoxFit.cover),
                              ),
                            ],
                          ),
                        ),
                      ),
                      bottom: TabBar(
                        controller: _tabController,
                        tabs: [
                          Tab(
                            text: "流行",
                          ),
                          Tab(
                            text: "新款",
                          ),
                          Tab(
                            text: "精选",
                          ),
                        ],
                        // isScrollable: true,
                        indicatorColor: Colors.orange,
                        indicatorWeight: 1,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorPadding: EdgeInsets.only(bottom: 10.0),
                        labelColor: Colors.pink,
                        labelStyle: TextStyle(
                          fontSize: 16.0,
                        ),
                        unselectedLabelColor: Colors.black,
                        unselectedLabelStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    )
                  ];
                },
                body: TabBarView(
                  controller: _tabController,
                  physics: new NeverScrollableScrollPhysics(),
                  children: <Widget>[
                    Text('1'),
                    Text('1'),
                    Text('1'),
                  ],
                ),
              );
              // return SingleChildScrollView(
              //     child: Container(
              //   height: 2000,
              //   child: Column(
              //     children: [
              //       // Text(homeMultiData.toString()),
              //       SwiperDiy(
              //           swiperDataList: snap.data["data"]["banner"]["list"]),
              //       GridDiy(gridList: snap.data["data"]["recommend"]["list"]),
              //       Container(
              //         width: double.infinity,
              //         height: 244,
              //         child: Image.asset('images/recommend_bg.jpg',
              //             fit: BoxFit.cover),
              //       ),
              //       SizedBox(
              //         height: 20,
              //       ),
              //     ],
              //   ),
              // ));
            } else {
              return Center(
                child: Text('加载中...'),
              );
            }
          },
        ),
      ),
    );
  }
}
