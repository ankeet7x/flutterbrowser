import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  String urlValue = "https://google.com";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return WebviewScaffold(
      url: urlValue,
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          width: size.width / 1.2,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.white),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: TextField(
                    controller: textController,
                    decoration: InputDecoration(hintText: "Enter url"),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
                onPressed: () async {
                  setState(() {
                    urlValue = textController.text;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
