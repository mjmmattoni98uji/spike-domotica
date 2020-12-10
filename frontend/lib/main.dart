import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async' as async;
import 'dart:convert';

void main() {
  runApp(
    MaterialApp(home: HomePage()),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Map data;
  String petData;


  void getPeticiones() async {
    http.Response response = await http.get('https://spike-domotica.herokuapp.com/peticiones/getPeticion');
        /*if(response.statusCode == 200){
      return Peticion.fromJson(jsonDecode(response.body));
    }
    else{
    throw Exception('ha fallado el get');
    }*/
    print(response.toString());
    data = json.decode(response.body);
    print(data);
    setState(() {
    petData = data['peticion']['name'];
    print(petData);
    });
  }

  @override
  void initState(){
    super.initState();
    getPeticiones();
  }


  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de peticiones'),
          backgroundColor: Colors.white12,
        ),
        body: Center(
            child: Text(petData)
        )
    );
  }
}