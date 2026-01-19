import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';

class LoginOrRegistrationPage extends StatefulWidget {
  const LoginOrRegistrationPage({super.key});

  @override
  State<LoginOrRegistrationPage> createState() => _LoginOrRegistrationPageState();
}

class _LoginOrRegistrationPageState extends State<LoginOrRegistrationPage> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if(showLoginPage){
      return LoginPage(
          onTap: togglePages
      );
    }else{
      return  RegisterPage(
          onTap: togglePages
      );
    }
  }
}
