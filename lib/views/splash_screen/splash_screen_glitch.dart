import 'package:flutter/material.dart';

class SplashScreenGlitch extends StatefulWidget {
  @override
  _SplashScreenGlitchState createState() => _SplashScreenGlitchState();
}

class _SplashScreenGlitchState extends State<SplashScreenGlitch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(color: Colors.white),
            ),
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      CircleAvatar(
                        backgroundColor: Color(0xff17223B),
                        radius: 150.0,
                        child: Icon(
                          Icons.wifi_off,
                          color: Color(0xffff6768),
                          size: 150.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        'Sem internet.',
                        style: TextStyle(
                            color: Color(0xffff6768),
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      'Você não está conectado à internet.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Color(0xffff6768)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      'Tenha certeza que o Wifi ou os Dados móveis estão ligados.',
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Color(0xffff6768)),
                    ),
                    OutlineButton(
                      onPressed: null,
                      child: Text('Tentar de novo'),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )
    );
  }
}
