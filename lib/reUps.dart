import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReUps extends StatefulWidget{
  @override
  _ReUps createState() => _ReUps();
}

class _ReUps extends State<ReUps> {

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
                  decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
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
                          child: Text("Reskilling Upskilling Website",
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 40,),
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
                            child: Image(image:AssetImage('assets/images/reskill.PNG'),width: 290,height: 180,)),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
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
                                Text('In this platform we provide high ratted course and library system by which user can select best cources for learning and upskilling its skills. It reduces the gap between fresher or employee in the required skill by the company. Here we have provided the, all category courses and trending topics like in computer science AI, Cloud computing etc.',
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
                                  Text('mission is to improve lives through learning. Our global marketplace features an extensive, multi-language library, which includes thousands of courses taught by expert instructors. You can take courses across a wide range of categories, some of which include: business & entrepreneurship, programming, academics, the arts, health & fitness, language, music and much more!',
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

