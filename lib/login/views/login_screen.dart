import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:list_2_us/login/views/header.dart';
import 'package:list_2_us/login/views/my-text-field.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: const Color(0xff17223b),
        body: Column(
          children: <Widget>[
            Header(width: width, height: height),
            Padding(
              padding: EdgeInsets.only(top: height * .05),
              child: const Center(
                child: Text(
                  'Bem-Vindo',
                  style: TextStyle(
                      fontFamily: 'MontserratAlternates',
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Color(0xfff5f3f4)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: (width * .7281) * .2),
              child:  MyTextField(
                controller: _passwordController,
                hintText: 'Email',
                width: width * .7281,
                height: (width * .7281) * .2,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: ((width * .7281) * .2) / 2),
              child:  MyTextField(
                controller: _passwordController,
                hintText: 'Senha',
                width: width * .7281,
                height: (width * .7281) * .2,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * .025, right: width * .21),
              child: const Text(
                'Esqueci minha senha',
                style: TextStyle(
                  fontFamily: 'SegoeUI',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xfff5f3f4),
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ));
  }
}
