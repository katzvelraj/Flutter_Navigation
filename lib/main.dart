import 'package:flutter/material.dart';
import 'login/login.dart';
import 'home/homepage.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget{

final routes = <String,WidgetBuilder>{
LoginRoute.tag :(context)=>LoginRoute(),
HomePage.tag:(context)=>HomePage()

};

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Login",
      home: LoginRoute(),
      routes: routes,
    );
  }
}

class LoginRoute extends StatelessWidget{
  static String tag = 'login-page';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Login();
  }
}
