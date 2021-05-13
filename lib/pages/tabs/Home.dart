import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  List<Widget> _getData(context) {
    List<Widget> list = new List();
    for (num i = 1; i <= 20; i++) {
      list.add(Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.pink, width: 3.0),
              borderRadius: BorderRadius.circular(10)),
          alignment: Alignment.center,
          child: InkWell(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage('images/a.jpeg'))),
                  ),
                ),
                // Align(
                //   alignment: Alignment.topCenter,
                //   child: Image.asset('images/a.jpeg'),
                // ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('钟谊楷傻逼$i'),
                )
              ],
            ),
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => SearchPage())
              // );
              Navigator.pushNamed(context, '/search', arguments: {
                "title": '钟谊楷傻逼$i'
              });
            },
          )));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.5),
        itemCount: this._getData(context).length,
        itemBuilder: (content, index) {
          return this._getData(context)[index];
        });
  }
}

// class HomeContent extends StatefulWidget {
//   HomeContent({Key key}) : super(key: key);

//   @override
//   _HomeContentState createState() => _HomeContentState();
// }

// class _HomeContentState extends State<HomeContent> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: RaisedButton(
//         child: Text('跳转到搜索页面'),
//         onPressed: () {
//           Navigator.of(context)
//               .push(MaterialPageRoute(builder: (BuildContext context) {
//             return SearchPage();
//           }));
//         },
//       ),
//     );
//   }
// }

