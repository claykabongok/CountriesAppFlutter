import 'package:flutter/material.dart';

class ViewListCountries extends StatelessWidget {
  @override
  static const routeName = '/list-counntries';
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
              height: 350,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://m.media-amazon.com/images/M/MV5BOTIzYmUyMmEtMWQzNC00YzExLTk3MzYtZTUzYjMyMmRiYzIwXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SX300.jpg'))),
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
