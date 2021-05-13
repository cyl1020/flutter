import 'package:flutter/material.dart';
// import '../Form.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CategoryContent(),
    );
  }
}

class CategoryContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: TabBar(
              isScrollable: true,
              indicatorColor: Colors.red,
              labelColor: Colors.pink,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(
                  text: '热门',
                ),
                Tab(
                  text: '推荐',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(children: [
                Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 2 / 1.5,
                          child:
                              Image.asset('images/a.jpeg', fit: BoxFit.cover),
                        ),
                        ListTile(
                          // leading: ClipOval(
                          //     child: Image.asset('images/a.jpeg',
                          //         fit: BoxFit.cover,
                          //         width: 60.0,
                          //         height: 60.0)
                          //     ),
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/a.jpeg'),
                          ),
                          title: Text('Shop'),
                          subtitle: Text('你值得拥有'),
                        )
                      ],
                    )),
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  textTheme: ButtonTextTheme.primary,
                  child: Text('跳转到表单页面'),
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(builder: (context) => FormPage(title: '我是跳转传值'))
                    // );
                    Navigator.pushNamed(context, '/form',
                        arguments: {"id": 123, "title": '传入的标题'});
                  },
                )
              ]),
              ListView(children: [
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  textTheme: ButtonTextTheme.primary,
                  child: Text('跳转到TabBarControllerPage页面'),
                  onPressed: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(builder: (context) => FormPage(title: '我是跳转传值'))
                    // );
                    Navigator.pushNamed(context, '/tabBarController');
                  },
                )
              ])
            ],
          ),
        ));
  }
}
