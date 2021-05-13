import 'package:flutter/material.dart';

//首页轮播图下面部分展示的组件
class GridDiy extends StatelessWidget {
  final List gridList;

  const GridDiy({Key key, this.gridList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      margin: EdgeInsets.only(top: 10),
      height: 100.0,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, //每行三列
            childAspectRatio: 1.0 //显示区域宽高相等
            ),
        itemBuilder: (context, int index) {
          return InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('温馨提示'),
                            SizedBox(height: 5,),
                            Text(
                              '请访问外部链接:',
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                        content: Text(
                          this.gridList[index]["link"],
                          style: TextStyle(color: Colors.red),
                        ),
                        actions: [
                          FlatButton(
                              onPressed: () {
                                Navigator.pop(context, 'ok');
                              },
                              child: Text('确定'))
                        ],
                      );
                    });
              },
              child: Column(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    child: Image.network(
                      gridList[index]["image"],
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    gridList[index]["title"],
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ));
        },
        itemCount: this.gridList.length,
      ),
    );
  }
}
