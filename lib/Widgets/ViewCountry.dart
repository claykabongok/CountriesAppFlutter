import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ViewCountry extends StatelessWidget {
  @override
  static const routeName = '/counntry-view';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Country details'),
      ),
      body: Column(children: <Widget>[
        Center(
          child: Card(
            elevation: 5,
            child: Container(
              height: 300,
              width: 300,
              child: SvgPicture.network(
                'https://restcountries.eu/data/cod.svg',
                fit: BoxFit.fill,
                semanticsLabel: 'flag',
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text('Country Name',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            )),
      ]),
    );
  }
}
