import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bookland extends StatefulWidget{
  @override
  _Bookland createState() => _Bookland();
}

class _Bookland extends State<Bookland> {

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
                          child: Text("Bookland Website",
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
                  SizedBox(height: 25,),
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
                            child: Image(image:AssetImage('assets/images/book-store.png'),width: 290,height: 180,)),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
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
                                Text('Online Book Store Project” is a simple online Book store app using React Js, I had not used redux in it (still have to learn it) is only React js, the backend server is hosted using Node js, it took me almost one month to finish this project, initially I planned to add more functionality to it but the amount of code (long list of state & props) was just increasing and I was overwhelmed with it, I will include this project in my portfolio, & it may not look nice in mobile devices as spent less time to make it responsive.',
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
                                  Text('The admin can only delete and edit the books that has been added by the admin. Publisher category contain all the publishers lists. The two main things are not fully implemented is contact and process purchase. Due to having to work with some security and online payment, the process site is just a place holder.',
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

