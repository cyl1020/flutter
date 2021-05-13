import 'package:flutter/material.dart';
// import 'package:flutter_cyl/pages/Tabs.dart';
import 'package:flutter_cyl/routes/Routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main(List<String> args) {
  runApp(MyApp());
}

//自定义组件
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('zh', 'CH'),
        const Locale('en', 'US')
      ],
      debugShowCheckedModeBanner: false, //去掉debug图标
      // home: Tabs(),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}



