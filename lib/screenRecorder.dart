import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vaibhav_profile/size_config.dart';

class ScreenRecorder extends StatefulWidget{
  @override
  _ScreenRecorder createState() => _ScreenRecorder();
}

class _ScreenRecorder extends State<ScreenRecorder> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(

      // ignore: missing_return
      onWillPop:(){
        moveToLastScreen();
      },

      child:AnimatedContainer(
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(40))
        ),
        child:Scaffold(
          appBar: PreferredSize(
              child:SafeArea(
                child: Container(
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:<Widget>[
                        IconButton(
                          icon:Icon(Icons.arrow_back_ios,
                            color: Colors.lightBlue[900],
                          ),
                          onPressed: () {
                            moveToLastScreen();
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Screen Recorder",
                            style:TextStyle(
                              fontSize: 20.0,
                              color:Colors.lightBlue[900],),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ), preferredSize: Size.fromHeight(70)),
          body:SingleChildScrollView(
            child: Container(
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/bk.jpg"),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 50),
                  Container(
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(decoration: new BoxDecoration(
                          shape: BoxShape.rectangle,
                        ),
                            child: Image(image:AssetImage('assets/images/screenRecorder.png'),width: 290,height: 180,)),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.7),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 18,),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: SizedBox(
                            width: 300.0,
                            child: Wrap(
                              children: [
                                Text(
                                  'Basically, a video is nothing but a sequence of images (called frames) displayed at a given frequency.So a workaround to make a screen recorder would be to capture each frame of the screen and write it as a video file. To do this python comes with handy libraries. For the screen recording we will be using OpenCV, PyAutoGUI, and Numpy.',
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          width: 350,
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[400],
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blueGrey.withOpacity(0.7),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SizedBox(
                              width: 250.0,
                              child: Wrap(
                                children: [
                                  Text(
                                    'Python is a widely used general-purpose language. It allows performing a variety of tasks. One of them can be recording a video. It provides a module named pyautogui which can be used for the same. This module along with NumPy and OpenCV provides the way to manipulate and save the images (screenshot in this case)',
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void moveToLastScreen(){
    Navigator.pop(context);
  }
}

