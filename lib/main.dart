import "weather_page.dart";
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: LocationPage(),
      theme: ThemeData(fontFamily:"Spartan" ),
    ),
  );
}
// Create WeatherPage in a separate file
class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
              image: DecorationImage(
                image : AssetImage('assets/weather.jpg'),
                fit: BoxFit.fill,
              )
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 120
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>WeatherPage()));
                },
                child: Text(
                  'Get Weather',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                color: Colors.blue.withAlpha(0),),
            ],
          ),
        ),
      ),
    );
  }
}
