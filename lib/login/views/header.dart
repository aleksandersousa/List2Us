import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import 'package:list_2_us/login/views/clipper.dart';

class Header extends StatelessWidget {
  const Header({this.width, this.height});

  final double width, height;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Clipper(),
      child: Container(
        width: width,
        height: height * .17,
        color: const Color(0xfff5f3f4),
        child: Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: height * .03),
              child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontFamily: 'SegoeUI',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff161A1D).withOpacity(.7)
                    ),
                    children: <TextSpan>[
                      const TextSpan(text: 'Ainda não tem uma conta?'),
                      TextSpan(
                          text: '   Cadastre-se',
                          style: const TextStyle(
                              fontFamily: 'SegoeUI',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff17223b)
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('cadastre-se');
                            }
                      )
                    ]
                ),
              ),
            )
        ),
      ),
    );
  }
}
