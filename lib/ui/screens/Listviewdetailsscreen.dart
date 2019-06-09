import 'package:flutter/material.dart';
import 'package:flutterfetchtaxiapp/model/carservices.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterfetchtaxiapp/utils/widgets/starWidget.dart';
import 'package:flutterfetchtaxiapp/utils/widgets/profilewidget.dart';

class ListViewDetailsScreen extends StatefulWidget {
  ListViewDetailsScreen({Key key, this.carServices}) : super(key: key);
  final CarServices carServices;

  _ListViewDetailsScreenState createState() =>
      _ListViewDetailsScreenState(carServices: this.carServices);
}

class _ListViewDetailsScreenState extends State<ListViewDetailsScreen> {
  CarServices carServices;
  Color _colorVal;

  _ListViewDetailsScreenState({this.carServices});

  void _favServices() {
    setState(() {
      _colorVal = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.solidHeart,
                  size: 30.0,
                  color: _colorVal,
                ),
                onPressed: () {
                 _favServices();
                },
              ),
              SizedBox(
                width: 25.0,
              ),
              Icon(
                FontAwesomeIcons.pen,
                size: 25.0,
                color: Theme.of(context).buttonColor,
              ),
              SizedBox(
                width: 5.0,
              ),
            ],
          )
        ],
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
              color: Theme.of(context).primaryColor,
              width: MediaQuery.of(context).size.width,
              height: 300.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.carSide,
                    size: 120.0,
                    color: Theme.of(context).buttonColor,
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            carServices.carService,
                            style: Theme.of(context).textTheme.display1,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        StarWidget(
                          numberOfStars:
                              int.parse(carServices.carRate.toString()),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Card(
            elevation: 3.0,
            child: Padding(
              padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
              child: ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '+123 456 7890',
                              style: Theme.of(context).textTheme.display2,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Office')),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.phone,
                        color: Theme.of(context).textTheme.title.color,
                      ),
                      onPressed: () {
                        //
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          ProfileWidget(),
        ],
      ),
    );
  }
}
