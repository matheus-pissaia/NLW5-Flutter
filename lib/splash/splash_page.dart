import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/core.dart';
import 'package:devquiz/home/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  SplashPage() {
    
  }
  
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).
        then((_) => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (contex) => HomePage()),
        ));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Center(
          child: Image.asset(AppImages.logo)
        ),
      ),
    );
  }
}