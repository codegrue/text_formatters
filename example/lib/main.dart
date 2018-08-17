import 'package:flutter/material.dart';
import 'package:text_formatters/text_formatters.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Text Formatters Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Text Formatters Example'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              decoration: InputDecoration(
                labelText: "(no formatter)",
              ),
            ),
            new TextField(
              decoration: InputDecoration(
                labelText: "UppercaseInputFormatter",
              ),
              inputFormatters: [
                UppercaseInputFormatter(),
              ],
            ),
            new TextField(
              decoration: InputDecoration(
                labelText: "LowercaseInputFormatter",
              ),
              inputFormatters: [
                LowercaseInputFormatter(),
              ],
            ),
            new TextField(
              decoration: InputDecoration(
                labelText: "AlternatingCapsInputFormatter",
              ),
              inputFormatters: [
                AlternatingCapsInputFormatter(),
              ],
            ),
            new TextField(
              decoration: InputDecoration(
                labelText: "MaskInputFormatter",
              ),
              inputFormatters: [
                MaskInputFormatter("(000) 000-0000"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
