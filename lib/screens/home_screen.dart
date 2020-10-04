import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String _textHeader = "お薬を飲みましょう";
  TextEditingController _textEditingController = TextEditingController();
  Widget _imageWidget = Container();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("おくすりアラート"),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                  child: Text("お名前", style: TextStyle(fontSize: 20.0))
              ),
              TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(fontSize: 20.0),
                controller: _textEditingController
              ),
              Center(
                  child: Text(_textHeader, style: TextStyle(fontSize: 18.0))
              ),
              Expanded(child: _imageWidget),
              SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: () => _onClick(),
                  child: Text("飲みました！", style: TextStyle(fontSize: 18.0),)
                ),
              )
            ],
          ),
        ));
  }

  void _onClick() {
    setState(() {
      //文字
      var inputText = _textEditingController.text;
      _textHeader = "$inputTextさん、次も忘れず飲みましょう！";
      //画像
      _imageWidget = Image.asset("assets/images/セフトリアキソン.PNG");
    });
  }
}
