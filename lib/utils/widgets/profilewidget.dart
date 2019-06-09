import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
                        'Preferred Drivers',
                        style: Theme.of(context).textTheme.display2,
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Divider(
                      height: 4.0,
                    ),
                    SizedBox(height: 10.0),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1456327102063-fb5054efe647?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                        backgroundColor: Colors.transparent,
                      ),
                      title: Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'James Allan',
                                    style: Theme.of(context).textTheme.display2,
                                  ),
                                ),
                                SizedBox(height: 5.0),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text('Busy',
                                    style: Theme.of(context).textTheme.title,
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
    );
  }
}
