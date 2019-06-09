import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutterfetchtaxiapp/model/carservices.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'ListViewServices.dart';

class ServicesWidget extends StatefulWidget {
  ServicesWidget({Key key}) : super(key: key);

  _ServicesWidgetState createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {

  List<CarServices> carService = List();

  Future<List<CarServices>> fetchServices(http.Client client) async {
    final response = await http.get('https://my.api.mockaroo.com/taxi_app.json?key=79229740');
    return parseServices(response.body);
  }

  List<CarServices> parseServices(String responseBody) {
    return (json.decode(responseBody) as List)
          .map((data) => new CarServices.fromJson(data)).toList();
  }
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<CarServices>>(
        future: fetchServices(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);
 
          return snapshot.hasData
              ? (ListViewServices(carServices: snapshot.data))
              : Center(child: CircularProgressIndicator());
        },
      );
  }
}