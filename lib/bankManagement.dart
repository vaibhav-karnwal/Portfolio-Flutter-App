import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BankManagement extends StatefulWidget{
  @override
  _BankManagement createState() => _BankManagement();
}

class _BankManagement extends State<BankManagement> {

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
                          child: Text("Bank Management System",
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
                  SizedBox(height: 26,),
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
                            child: Image(image:AssetImage('assets/images/create-account.PNG'),width: 290,height: 180,)),
                      ],
                    ),
                  ),
                  SizedBox(height: 26,),
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
                                Text('I have made a Bank Management System which is based on GUI. It is an application for maintaining a persons account in a bank. This system provides the access to the customer to create an account, deposit/withdraw/transfer the cash from his account, also to view reports of all accounts present.The main objective of creating a GUI-based bank management system is to maintain the bank account records, transaction records of the customers. Easy to track all the banking activity of a centralized system.',
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
                                  Text('User can perform following crud operation.\n\n▪ Users can register and login in to the application.\n▪   Users can send money to another user.\n▪   The user can update his profile.\n▪   Users can check the transaction history as well.',
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

