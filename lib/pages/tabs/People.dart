import 'package:flutter/material.dart';

class PeoplePage extends StatefulWidget {
  PeoplePage({Key key}) : super(key: key);

  @override
  _PeoplePageState createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // floatingActionButton: FloatingActionButton(
        //   child: Icon(Icons.add, color: Colors.white, size: 30.0,),
        //   onPressed: (){},
        //   backgroundColor: Colors.pinkAccent,
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text('普通按钮'),
                  onPressed: () {
                    print('普通按钮');
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  child: Text('普通按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  elevation: 5.0,
                  onPressed: () {
                    print('普通按钮');
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton.icon(
                  onPressed: () {
                    print('搜索按钮');
                  },
                  icon: Icon(Icons.search),
                  label: Text('图标按钮'),
                  color: Colors.blue,
                  textColor: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  width: 200.0,
                  height: 50.0,
                  child: RaisedButton(
                    child: Text('普通按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 10.0,
                    onPressed: () {
                      print('普通按钮');
                    },
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(10.0),
                  height: 40.0,
                  child: RaisedButton(
                    child: Text('自适应按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 10.0,
                    onPressed: () {
                      print('普通按钮');
                    },
                  ),
                ))
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: RaisedButton(
                    child: Text('圆角按钮'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 10.0,
                    onPressed: () {
                      print('普通按钮');
                    },
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  child: FlatButton(
                    child: Text('偏平按钮'),
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () {
                      print('偏平按钮');
                    },
                  ),
                ),
                // SizedBox(
                //   width: 20.0,
                // ),
                // Container(
                //   child: OutlineButton(
                //     child: Text('没有背景的按钮'),
                //     textColor: Colors.blue,
                //     onPressed: () {
                //       print('没有背景的按钮');
                //     },
                //   ),
                // )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  margin: EdgeInsets.all(10.0),
                  child: RaisedButton(
                    child: Text('圆角按钮'),
                    shape: CircleBorder(side: BorderSide(color: Colors.blue)),
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 10.0,
                    onPressed: () {
                      print('普通按钮');
                    },
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  text: '第一个自定义按钮',
                  color: Colors.red,
                  width: 150.0,
                  height: 60.0,
                  shape: true,
                  pressed: () {
                    print('aaa');
                  },
                ),
                SizedBox(width: 20.0),
                MyButton(
                  text: '第二个自定义按钮',
                  color: Colors.yellow,
                  width: 150.0,
                  height: 50.0,
                  pressed: () {
                    print('bbb');
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final color;
  final pressed;
  final bool shape;
  MyButton(
      {this.shape = false,
      this.text = '默认按钮',
      this.width = 150.0,
      this.height = 50.0,
      this.color = Colors.blue,
      this.pressed});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.width,
        height: this.height,
        child: RaisedButton(
          onPressed: this.pressed,
          color: this.color,
          child: Text(this.text, style: TextStyle(
            color: Colors.white
          ),),
          // shape: CircleBorder(
          //   // side: BorderSide(color: Colors.yellow),
          // ),
          shape: shape
              ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))
              : RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        ));
  }
}

class Shape {}
