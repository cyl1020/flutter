import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
// import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class DatePage extends StatefulWidget {
  DatePage({Key key}) : super(key: key);

  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('时间')),
      body: Date(),
    );
  }
}

class Date extends StatefulWidget {
  Date({Key key}) : super(key: key);

  @override
  _DateState createState() => _DateState();
}

class _DateState extends State<Date> {
  var now = DateTime.now();
  var time = TimeOfDay.now();
  DateTime _dateTime = DateTime.now();

  _showDatePicker() async {
    // showDatePicker (
    //   context: context,
    //   initialDate: this.now,
    //   firstDate: DateTime(1980),
    //   lastDate: DateTime(2100)
    // ).then((value) => print(value));

    var result = await showDatePicker(
        context: context,
        initialDate: this.now,
        firstDate: DateTime(1980),
        lastDate: DateTime(2100));

    if (result == null) return;
    setState(() {
      this.now = result;
    });
  }

  _showTimePicker() async {
    var result = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (result == null) return;
    setState(() {
      this.time = result;
    });
  }

  // _showTime2Picker() {
  //  DatePicker.showDatePicker(
  //     context,
  //     onMonthChangeStartWithFirstDate: true,
  //     // pickerTheme: DateTimePickerTheme(
  //     //   showTitle: true,
  //     //   confirm: Text('确定', style: TextStyle(color: Colors.red)),
  //     //   cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
  //     // ),
  //     minDateTime: DateTime.parse('1980-01-01'),
  //     maxDateTime: DateTime.parse('2100-01-01'),
  //     initialDateTime: _dateTime,
  //     dateFormat: 'yyyy-MMMM-dd',
  //     locale: DateTimePickerLocale.zh_cn,
  //     onClose: () => print("----- onClose -----"),
  //     onCancel: () => print('onCancel'),
  //     onChange: (dateTime, List<int> index) {
  //       setState(() {
  //         _dateTime = dateTime;
  //       });
  //     },
  //     onConfirm: (dateTime, List<int> index) {
  //       setState(() {
  //         _dateTime = dateTime;
  //       });
  //     },
  //   );
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   print(this.now.microsecondsSinceEpoch);
  // }
  // @override
  // void initState() {
  //   super.initState();
  //   print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd]));
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                child: Row(
                  children: [
                    Text('${formatDate(this.now, [
                      yyyy,
                      '年',
                      mm,
                      '月',
                      dd,
                      '日'
                    ])}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showDatePicker,
              ),
              InkWell(
                child: Row(
                  children: [
                    Text('${this.time.format(context)}'),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
                onTap: _showTimePicker,
              ),
            ],
          )
        ],
      ),
    );
  }
}
