import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("おくすりアラート"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Center(
                  child:
                      Text("お名前", style: TextStyle(fontSize: 20.0))),
              TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 20.0),
                controller: null, //TODO
              ),
              Image.asset("assets/images/セフトリアキソン.PNG", scale: 10.0,),
              SizedBox(height: 80.0),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: null, //TODO ボタンのクリック処理
                  child: Text("飲みました！", style: TextStyle(fontSize: 18.0),)
                ),
              )
            ],
          ),
        ));
  }
}
