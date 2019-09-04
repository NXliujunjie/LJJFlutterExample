import 'package:flutter/material.dart';
import 'package:flutter_http/dioHttp.dart';
import 'httpOne.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HttpVc(),
    );
  }
}

class HttpVc extends StatelessWidget {
 const HttpVc({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Scaffold(
          appBar: new AppBar(title: new Text('http请求')),
          body: new Column(children: <Widget>[
            Row(children: <Widget>[
              new RaisedButton(
                child: Text('发送http请求s'),
                onPressed: httpRequest,
              ),
            ]),
            Row(children: <Widget>[
              new RaisedButton(
                child: Text('dio矿建发送http请求'),
                onPressed: DioHttps,
              ),
            ])
          ])),
    );
  }
}
