/*
Copyright 2019 The dahliaOS Authors
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

import 'package:flutter/material.dart';

void main() {
  runApp(new GraftApp());
}

class GraftApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Graft',
      theme: new ThemeData(
        platform: TargetPlatform.fuchsia,
        primarySwatch: Colors.blue,
        canvasColor: const Color(0xFFfafafa),
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => GraftHomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => GraftHomePage(),
      },
    );
  }
}

class GraftHomePage extends StatefulWidget {
  GraftHomePage({Key key}) : super(key: key);
  @override
  _GraftHomePageState createState() => new _GraftHomePageState();
}

class _GraftHomePageState extends State<GraftHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Graft'),
      ),
    );
  }
}
