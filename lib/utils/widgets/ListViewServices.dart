import 'package:flutter/material.dart';
import 'package:flutterfetchtaxiapp/model/carservices.dart';
import 'package:flutterfetchtaxiapp/utils/widgets/starWidget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterfetchtaxiapp/ui/screens/Listviewdetailsscreen.dart';

class ListViewServices extends StatefulWidget {
  ListViewServices({Key key, this.carServices}) : super(key: key);
  List<CarServices> carServices;
  _ListViewServicesState createState() =>
      _ListViewServicesState(carServices: this.carServices);
}

class _ListViewServicesState extends State<ListViewServices> {

  List<CarServices> carServices;
  _ListViewServicesState({this.carServices});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: carServices.length,
          padding: const EdgeInsets.all(15.0),
          itemBuilder: (context, index) {
            return Column(
              children: <Widget>[
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
                                    '${carServices[index].carService}',
                                    style: Theme.of(context).textTheme.headline,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                StarWidget(
                                  numberOfStars: int.parse(
                                      '${carServices[index].carRate}'
                                          .toString()),
                                ),
                              ],
                            ),
                          ),
                          Theme(
                          data:Theme.of(context).copyWith(
                              iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.grey),
                          ),
                          child:IconButton(
                            icon: Icon(
                                  FontAwesomeIcons.angleRight,
                                ),
                                onPressed: () {
                                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ListViewDetailsScreen(carServices:carServices[index])));
                                },
                           
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ),
              ],
            );
          }),
    );
  }

 
}
