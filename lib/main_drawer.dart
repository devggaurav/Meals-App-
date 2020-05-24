import 'package:flutter/material.dart';
import 'package:flutterappnavigationdemo/screens/filters_screen.dart';


class MainDrawer extends StatelessWidget{

  Widget buildTiles(String title,IconData icons,Function tapHandler){
    return  ListTile(
      leading: Icon(icons),title: Text(
      title,style: TextStyle(
        fontFamily: 'RobotoCondensed',
        fontSize: 26,
        fontWeight: FontWeight.bold
    ),
    ),
      onTap: tapHandler
      ,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(child: Column(
      children: <Widget>[
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          color: Theme.of(context).accentColor,
          child: Text('Coocking Up!',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 30,
            color: Theme.of(context).primaryColor,
          ),),
        ),
        SizedBox(height: 20,),
        buildTiles('Meals', Icons.restaurant,(){
        //  Navigator.of(context).pushNamed('/');  it will always add a new page in stack
          Navigator.of(context).pushReplacementNamed('/');
        }),
        buildTiles('Filters', Icons.settings,(){
        //  Navigator.of(context).pushNamed(FilterScreen.routeName);

          Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);


        }),

      ],

    ),);
  }




}