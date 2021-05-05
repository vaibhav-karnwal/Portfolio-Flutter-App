import 'package:flutter/material.dart';
import 'package:vaibhav_profile/homeScreen.dart';
import 'package:vaibhav_profile/drawerScreen.dart';
void main() =>runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: Home(),
    )
);
class MyThemes{
  static final darkTheme=ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
  );
  static final lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.white,
  );

}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Stack(
       children: [
         DrawerScreen(),
         HomeScreen(),
       ],
     ),
    );
  }
}

