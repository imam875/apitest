
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  getfunction ()async{

    /*var abd = Uri.parse("https://reqres.in/api/users?page=2");
    final imam =await http.get(abd);
    final hossen =Json.decode(imam.body) as List;*/

    /*same but 2nd way
    var abc = "https://reqres.in/api/users?page=2";
    final response =await http.get( Uri.parse(abc));
    final responsData =json.decode(response.body) as List;*/


  }


  @override
  void initState() {
    super.initState();
    getfunction();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
        body:RaisedButton(
          onPressed: () {
            setState(() {
              getfunction();
            });
          },
        )


    );
  }
}
