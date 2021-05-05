import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vaibhav_profile/chatapp.dart';
import 'package:vaibhav_profile/chatbot.dart';
import 'package:vaibhav_profile/bankManagement.dart';
import 'package:vaibhav_profile/ocr.dart';
import 'package:vaibhav_profile/faceRecognizer.dart';
import 'package:vaibhav_profile/fbscrape.dart';
import 'package:vaibhav_profile/laptopally.dart';
import 'package:vaibhav_profile/portfolio.dart';
import 'package:vaibhav_profile/newPortfolio.dart';
import 'package:vaibhav_profile/reUps.dart';
import 'package:vaibhav_profile/screenRecorder.dart';
import 'package:vaibhav_profile/bookland.dart';

class ProjectScreen extends StatefulWidget{
  @override
  _ProjectScreen createState() => _ProjectScreen();
}

class _ProjectScreen extends State<ProjectScreen> {

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
                          child: Text("Projects",
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
                shape: BoxShape.rectangle,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Divider(
                    color:Colors.blue,
                    thickness: 1.0,
                  ),
                  Container(
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ChatApp()),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.blue[200]),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                              ),
                              child:Column(
                                children: [
                                  Image(image:AssetImage('assets/images/chat.PNG'),width: 130,height: 140,),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom:8.0),
                                    child: Text('Chat-App',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Bookland()),
                                );
                              },
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.pink[200]),
                                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                              ),
                              child:Column(
                                children: [
                                  Image(image:AssetImage('assets/images/book-store.png'),width: 130,height: 140,),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom:8.0),
                                    child: Text('Bookland',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  Container(
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ScreenRecorder()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.red[200]),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                            ),
                            child:Column(
                              children: [
                                Image(image:AssetImage('assets/images/screenRecorder.png'),width: 130,height: 140,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:8.0),
                                  child: Text('Screen Recorder',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ChatBot()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.green[200]),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                            ),
                            child:Column(
                              children: [
                                Image(image:AssetImage('assets/images/chatbot1.png'),width: 130,height: 140,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:8.0),
                                  child: Text('ChatBot',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color:Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => BankManagement()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.indigo[200]),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                            ),
                            child:Column(
                              children: [
                                Image(image:AssetImage('assets/images/create-account.PNG'),width: 130,height: 120,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:8.0),
                                  child: Text('Bank Management\n          System',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color:Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => FbScrape()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.blue[200]),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                            ),
                            child:Column(
                              children: [
                                Image(image:AssetImage('assets/images/fbscrape.PNG'),width: 130,height: 140,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:8.0),
                                  child: Text('Facebook Scraping',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FaceRecognizer()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.pink[200]),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                          ),
                            child:Column(
                              children: [
                                Image(image:AssetImage('assets/images/faceRecognitionSystem.PNG'),width: 130,height: 120,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:8.0),
                                  child: Text('Face Recognition\n        System',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color:Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Portfolio()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.red[200]),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                            ),
                            child:Column(
                              children: [
                                Image(image:AssetImage('assets/images/portfolio.png'),width: 130,height: 140,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:8.0),
                                  child: Text('Portfolio',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                         OutlinedButton(
                           onPressed: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => OCR()),
                             );
                           },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.green[200]),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                            ),
                            child:Column(
                              children: [
                                Image(image:AssetImage('assets/images/OCR.png'),width: 130,height: 140,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:8.0),
                                  child: Text('O-C-R Converter',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                         Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Laptopally()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.indigo[200]),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                            ),
                            child:Column(
                              children: [
                                Image(image:AssetImage('assets/images/laptop.PNG'),width: 130,height: 140,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:8.0),
                                  child: Text('Laptopally',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NewPortfolio()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.blue[200]),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                            ),
                            child:Column(
                              children: [
                                Image(image:AssetImage('assets/images/new_portfolio.PNG'),width: 130,height: 140,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:8.0),
                                  child: Text('New Portfolio',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color:Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ReUps()),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.pink[200]),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
                            ),
                            child:Column(
                              children: [
                                Image(image:AssetImage('assets/images/reskill.PNG'),width: 130,height: 140,),
                                Padding(
                                  padding: const EdgeInsets.only(bottom:8.0),
                                  child: Text('Re-Ups Website',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
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

