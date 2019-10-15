import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(
      fontSize: 72,
      color: Colors.white,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
            image: DecorationImage(
              image : AssetImage('assets/weather1.jpg'),
              fit: BoxFit.fill,
            )

        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      Icons.near_me,
                      color: Colors.white,
                      size: 32,),
                    Icon(Icons.business,
                      color: Colors.white,
                      size: 32,)
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(

                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                child: Row(
                  children: <Widget>[
                    Text ( "32 \u00b0 ",
                      textAlign: TextAlign.left,
                      style: style,
                    ),
                    Text ( "☀️",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 48
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: SizedBox(
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                child: Wrap(
                  children: <Widget>[
                    Text ('Its 🍦 time in Patna! ',
                      style: style,
                      textAlign: TextAlign.right,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
