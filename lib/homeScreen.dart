import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vaibhav_profile/pdf_viewer_page.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
    _launchLinkedin() async {
      const linkedin_url = 'https://www.linkedin.com/in/vaibhav-karnwal/';
      if (await canLaunch(linkedin_url)) {
        await launch(linkedin_url);
      } else {
        throw 'Could not launch $linkedin_url';
      }
    }
    _launchGithub() async {
      const github_url = 'https://github.com/vaibhav-karnwal/';
      if (await canLaunch(github_url)) {
        await launch(github_url);
      } else {
        throw 'Could not launch $github_url';
      }
    }
    _launchInstagram() async {
      const instagram_url = 'https://www.instagram.com/vaibhavkarnwal2812/';
      if (await canLaunch(instagram_url)) {
        await launch(instagram_url);
      } else {
        throw 'Could not launch $instagram_url';
      }
    }
    _launchPortfolio() async {
      const portfolio_url = 'https://trorstphpuskxi3cchfhdg-on.drv.tw/www.myportfolio.com/';
      if (await canLaunch(portfolio_url)) {
        await launch(portfolio_url);
      } else {
        throw 'Could not launch $portfolio_url';
      }
    }

    double xOffset = 0;
    double yOffset = 0;
    double scaleFactor = 1;

    bool isDrawerOpen = false;
    @override
    Widget build(BuildContext context) {
      return AnimatedContainer(
        transform: Matrix4.translationValues(xOffset, yOffset, 0)..scale(scaleFactor),
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
                        isDrawerOpen? IconButton(
                          icon:Icon(Icons.arrow_back_ios,
                            color: Colors.lightBlue[900],
                          ),
                          onPressed: (){
                            setState(() {
                              xOffset =0;
                              yOffset = 0;
                              scaleFactor=1;
                              isDrawerOpen=false;
                            });
                          },
                        ):IconButton(
                          icon:Icon(Icons.menu,
                            color: Colors.lightBlue[900],
                          ),
                          onPressed: (){
                            setState(() {
                              xOffset =270;
                              yOffset = 130;
                              scaleFactor=0.7;
                              isDrawerOpen=true;
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Er Vaibhav Karnwal Portfolio",
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
                        borderRadius: const BorderRadius.all(const Radius.circular(40)),
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top:18.0),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[

                            CircleAvatar(
                              radius: 90.0,
                              backgroundImage: AssetImage('assets/images/anmol.png'),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top:5.0),
                                    child: Text('Vaibhav Karnwal',
                                      style:TextStyle(
                                        color:Colors.blue,
                                        fontSize: 30.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top:2.0),
                                    child: Text('(FrontEnd & Flutter Developer)',
                                      style:TextStyle(
                                        color:Colors.red,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top:5.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:<Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(top:5.0),
                                            child: Icon(
                                              Icons.email_outlined,
                                              color:Colors.blueGrey,
                                              size: 20.0,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top:5.0),
                                            child: Text('  vaibhavkarnwal2812@gmail.com',
                                              style:TextStyle(
                                                color:Colors.blue,
                                                fontSize: 13.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top:2.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:<Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(top:5.0),
                                            child: Icon(
                                              Icons.phone,
                                              color:Colors.blueGrey,
                                              size: 20.0,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top:5.0),
                                            child: Text('  9456412124, 9997243157',
                                              style:TextStyle(
                                                color:Colors.blue,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top:2.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children:<Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(top:5.0),
                                            child: Icon(
                                              Icons.location_on_outlined,
                                              color:Colors.blueGrey,
                                              size: 20.0,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(top:5.0, bottom:8.0),
                                            child: Text('  Angeera Nagar near Parag Dugdh Sangh Ring\n  Road  Chakkar Chowk Bijnor, (U.P) India',
                                              style:TextStyle(
                                                color:Colors.blue,
                                                fontSize: 14.0,
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
                    Divider(
                      color:Colors.blue,
                      thickness: 1.0,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child:Text('Skills',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto-Regular',
                            color:Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color:Colors.blue,
                      thickness: 1.0,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.teal[800],
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Flutter',
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.teal[800],
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Reactjs',
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.teal[800],
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Node.js',
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.teal[800],
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Python',
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.teal[800],
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Java',
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.teal[800],
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Django',
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.teal[800],
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('SQLite',
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.teal[800],
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Javascript',
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.teal[800],
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('HTML',
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.teal[800],
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Css',
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget>[
                            Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.teal[800],
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Bootstrap',
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.teal[800],
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Selenium',
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: new BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.teal[800],
                              ),
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('BeautifulSoup',
                                  style:TextStyle(
                                    color:Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color:Colors.blue,
                      thickness: 1.0,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child:Text('Experience',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto-Regular',
                            color:Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color:Colors.blue,
                      thickness: 1.0,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Container(
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top:5.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:<Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(left:10.0),
                                            child: Text('Flutter Developer Intern',
                                              style:TextStyle(
                                                color:Colors.blue,
                                                fontSize: 17.0,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:65),
                                            child: Text('Apr 2021 - current',
                                              style:TextStyle(
                                                color:Colors.blue,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:10.0),
                                    child: Text('Ranavaj Power Solution Pvt. Ltd.',
                                      style:TextStyle(
                                        fontWeight: FontWeight.w300, // light
                                        fontStyle: FontStyle.italic,
                                        color:Colors.red[900],
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:15.0,top:5),
                                    child: Text('• Working with Dart and Flutter to design, develop and\ndebug the hybrid application. Integrating backend\nservices(API integration) and working with the team\nto manage, optimize and customize multiple Android\napplications',
                                      style:TextStyle(
                                        color:Colors.lightBlue[900],
                                        fontSize: 14.0,
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
                    Container(
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Container(
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top:5.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:<Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(left:10.0),
                                            child: Text('Diploma Trainee',
                                              style:TextStyle(
                                                color:Colors.blue,
                                                fontSize: 17.0,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:105),
                                            child: Text('Jun 2015 - Dec 2015',
                                              style:TextStyle(
                                                color:Colors.blue,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:10.0),
                                    child: Text('Bhagwati Products Ltd. (MICROMAX)',
                                      style:TextStyle(
                                        fontWeight: FontWeight.w300, // light
                                        fontStyle: FontStyle.italic,
                                        color:Colors.red[900],
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:15.0,top:5, bottom:8.0),
                                    child: Text('• Work as a Diploma Trainee in the online Assembly of\nLed Panel at 5 stages in Bhagwati Products Ltd.',
                                      style:TextStyle(
                                        color:Colors.lightBlue[900],
                                        fontSize: 14.0,
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
                    Divider(
                      color:Colors.blue,
                      thickness: 1.0,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child:Text('Education',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto-Regular',
                            color:Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color:Colors.blue,
                      thickness: 1.0,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Container(
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top:5.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:<Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(left:10.0),
                                            child: Text('Bachelor of Engineering (Computer Science)',
                                              style:TextStyle(
                                                color:Colors.blue,
                                                fontSize: 17.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:10.0),
                                    child: Text('Kunwar Satyavira College of Engineering and Management (AKTU)',
                                      style:TextStyle(
                                        fontWeight: FontWeight.w300, // light
                                        fontStyle: FontStyle.italic,
                                        color:Colors.red[900],
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:235),
                                    child: Text('Aug 2017 – Jun 2021',
                                      style:TextStyle(
                                        color:Colors.blue,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:15.0,top:5),
                                    child: Text('• Pursuing with 80.1% marks',
                                      style:TextStyle(
                                        color:Colors.lightBlue[900],
                                        fontSize: 14.0,
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
                    Container(
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Container(
                                    decoration: new BoxDecoration(
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.only(top:5.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:<Widget>[
                                          Padding(
                                            padding: EdgeInsets.only(left:10.0),
                                            child: Text('Diploma (Mechanical Engg.)',
                                              style:TextStyle(
                                                color:Colors.blue,
                                                fontSize: 17.0,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:10),
                                            child: Text('Aug 2012 – Aug 2015',
                                              style:TextStyle(
                                                color:Colors.blue,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:10.0),
                                    child: Text('Govt. Polytechnic Bijnor (UPBTE)',
                                      style:TextStyle(
                                        fontWeight: FontWeight.w300, // light
                                        fontStyle: FontStyle.italic,
                                        color:Colors.red[900],
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:15.0,top:5, bottom:8.0),
                                    child: Text('• Passed with 71% marks.',
                                      style:TextStyle(
                                        color:Colors.lightBlue[900],
                                        fontSize: 14.0,
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
                    Divider(
                      color:Colors.blue,
                      thickness: 1.0,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child:Text('Certificates',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto-Regular',
                            color:Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color:Colors.blue,
                      thickness: 1.0,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                              Image(image:AssetImage('assets/images/python.png'),width: 170,
                                height: 150,),
                              Image(image:AssetImage('assets/images/java.png'),width: 170,
                                height: 150,),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(bottom:8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(image:AssetImage('assets/images/machine.png'),width: 170,
                                height: 150,),
                            Image(image:AssetImage('assets/images/wheebox.png'),width: 170,
                                height: 150,),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color:Colors.blue,
                      thickness: 1.0,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child:Text('Achievements',
                          style:TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Roboto-Regular',
                            color:Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color:Colors.blue,
                      thickness: 1.0,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top:8.0),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:[
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(left:15.0,top:5),
                                    child: Text('• HackerRank Java Certificate.',
                                      style:TextStyle(
                                        color:Colors.lightBlue[900],
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:15.0,top:5),
                                    child: Text('• HackerRank Python Certificate.',
                                      style:TextStyle(
                                        color:Colors.lightBlue[900],
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),Padding(
                                    padding: EdgeInsets.only(left:15.0,top:5),
                                    child: Text('• Internshala 6 week Machine Learning Summer\n  Training Certificate.',
                                      style:TextStyle(
                                        color:Colors.lightBlue[900],
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),Padding(
                                    padding: EdgeInsets.only(left:15.0,top:5),
                                    child: Text('• Currently having 5 stars on HackerRank in Java and\n  MySQL and 4 stars in Problem Solving.',
                                      style:TextStyle(
                                        color:Colors.lightBlue[900],
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),Padding(
                                    padding: EdgeInsets.only(left:15.0,top:5),
                                    child: Text('• Got 467 rank in Wheebox National Employability Test.',
                                      style:TextStyle(
                                        color:Colors.lightBlue[900],
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),Padding(
                                    padding: EdgeInsets.only(left:15.0,top:5),
                                    child: Text('• Summer Training in BHEL',
                                      style:TextStyle(
                                        color:Colors.lightBlue[900],
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left:15.0,top:5, bottom:8.0),
                                    child: Text('• Represent school in various inter-school Exhibition\n  competitions.',
                                      style:TextStyle(
                                        color:Colors.lightBlue[900],
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color:Colors.blue,
                      thickness: 1.0,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget>[
                            ElevatedButton(
                              onPressed: _launchLinkedin,
                              child: Icon(FontAwesomeIcons.linkedin),
                            ),
                            ElevatedButton(
                              onPressed: _launchGithub,
                              child: Icon(FontAwesomeIcons.github),
                            ),
                            ElevatedButton(
                              onPressed: _launchInstagram,
                              child: Icon(FontAwesomeIcons.instagram),
                            ),
                            ElevatedButton(
                              onPressed: _launchPortfolio,
                              child: Icon(FontAwesomeIcons.globe),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:<Widget>[
                            ElevatedButton(
                              onPressed: (){
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => PdfViewer()),
                                );
                              },
                              child: Text('Resume',
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: new BoxDecoration(
                        color: Colors.lightBlue[900],
                        shape: BoxShape.rectangle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top:4.0,bottom: 4.0),
                        child:Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Padding(
                              padding: EdgeInsets.only(left:10.0),
                              child: Text('Made By Er Vaibhav Karnwal in 2021',
                                style:TextStyle(
                                  color:Colors.white,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
              ),
            ),
          ),
        ),
      );
    }
  }

