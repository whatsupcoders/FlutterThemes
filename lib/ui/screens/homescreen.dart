import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutterfetchtaxiapp/utils/widgets/serviceswidget.dart';
import 'package:flutterfetchtaxiapp/utils/widgets/favouritewidget.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;
 final List<Widget> _children = [
   ServicesWidget(),
   FavouriteWidget()
 ];

  @override
  Widget build(BuildContext context) {
    // Build the content depending on the state:
    return Scaffold(
     appBar: AppBar(
       leading: Icon(FontAwesomeIcons.bars,
        color: Theme.of(context).iconTheme.color,
       ),
       title: Text('Fetch Taxi'),
     ),
     body: _children[_currentIndex], // new
     bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped, // new
       currentIndex: _currentIndex, 
       items: [
         BottomNavigationBarItem(
           icon: new Icon(FontAwesomeIcons.car),
           title: new Text('Services'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(FontAwesomeIcons.solidHeart),
           title: new Text('Favourite'),
         ),
       ],
     ),
   );
  }
  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}