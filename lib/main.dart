import 'package:flutter/material.dart';
import 'models/Services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Services.createDatabase();
    return MaterialApp(
      title: 'The Scores',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'The Scores'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'The Scores',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontFamily: "Roboto",
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonHeight: 60.00,
              buttonMinWidth: 270.00,
              buttonPadding: EdgeInsets.all(10.00),
              children: <Widget>[
                FlatButton(
                  child:
                    Text(
                      'JOUER',
                      style: TextStyle(color: Colors.purple, fontSize: 20),
                    ),
                  color: Colors.transparent,
                  highlightColor: Colors.purple,
                  onPressed: () {/** */},
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.purple,
                      width: 1,
                      style: BorderStyle.solid
                    ),
                    borderRadius: BorderRadius.circular(5)),
                ),
                new Container(
                  margin: EdgeInsets.all(10.00),
                ),
                FlatButton(
                  child:
                    Text(
                      'HISTORIQUE DES PARTIES',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  color: Colors.transparent,
                  onPressed: () {/** */},
                  highlightColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.white,
                          width: 1,
                          style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.circular(5)),
                ),
                new Container(
                  margin: EdgeInsets.all(10.00),
                ),
                FlatButton(
                  child:
                  Text(
                    'LES JEUX',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                  color: Colors.transparent,
                  onPressed: () {/** */},
                  highlightColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.blue,
                          width: 1,
                          style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.circular(5)),
                ),
                new Container(
                  margin: EdgeInsets.all(10.00),
                ),
                FlatButton(
                  child:
                    Text(
                      'LES JOUEURS',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  color: Colors.transparent,
                  onPressed: () {/** */},
                  highlightColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: Colors.red,
                        width: 1,
                        style: BorderStyle.solid
                    ),
                    borderRadius: BorderRadius.circular(5)),
                ),

              ],
            ),
          ],
        ),
      ),
    );

  }

}
