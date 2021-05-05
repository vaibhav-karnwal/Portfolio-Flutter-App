import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:vaibhav_profile/configuration.dart';
import 'package:vaibhav_profile/project.dart';

class DrawerScreen extends StatefulWidget{
  @override
  _DrawerScreen createState() => _DrawerScreen();
}

class _DrawerScreen extends State<DrawerScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff416d6d),
      padding: EdgeInsets.only(top: 50,left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Column(
            children: [
              SizedBox(width: 10,),
              Row(
                children: [
                  CircleAvatar(radius: 30.0,
                    backgroundImage: AssetImage('assets/images/anmol.png'),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Vaibhav Karnwal",
                        style:TextStyle(
                          fontSize: 20.0,
                          color:Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text("FrontEnd & Flutter Developer",
                        style:TextStyle(
                          fontSize: 12.0,
                          color:Colors.deepOrange[100],),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:2.0),
                            child: Text("2272",
                              style:TextStyle(
                                fontSize: 14.0,
                                color:Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Follower",
                                style:TextStyle(
                                  fontSize: 16.0,
                                  color:Colors.white60,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:8.0),
                            child: Text("439",
                              style:TextStyle(
                                  fontSize: 14.0,
                                  color:Colors.white),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Following",
                              style:TextStyle(
                                fontSize: 16.0,
                                color:Colors.white60,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8,top:4.0),
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProjectScreen()),
                      );
                    },
                    child: Row(
                      children:[
                        Icon(FontAwesomeIcons.tasks,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: 10,),
                        Text('Projects',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ),
          Column(
            children: drawerItems.map((element) => Padding(
              padding: const EdgeInsets.only(left: 8,top:4.0),
              child: Row(
                children: [
                  TextButton(
                    onPressed: element['onPress'],
                    child: Row(
                      children:[
                        Icon(element['icon'],
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: 10,),
                        Text(element['title'],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                            ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )).toList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text('Made By Er Vaibhav Karnwal in 2021',
                  style:TextStyle(
                    color:Colors.deepOrange[100],
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

